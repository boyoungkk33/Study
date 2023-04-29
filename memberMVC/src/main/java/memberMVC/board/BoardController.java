package memberMVC.board;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;

@WebServlet("/board/*")
public class BoardController extends HttpServlet {
	BoardService boardService;
	ArticleVO articleVO;
	private static String IMG_REPO = "D:\\boyoung\\board\\image_upload";

	@Override
	public void init() throws ServletException {
		// 계속 사용하므로 생성시 하나만 만들고 계속 사용한다
		boardService = new BoardService();
		articleVO = new ArticleVO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	private void doHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8;");
		String nextPage = "";
		PrintWriter out;
		HttpSession session;
		String action = request.getPathInfo();// 요청명 가져오기
		System.out.println("요청 이름 : " + action);
		try {
			List<ArticleVO> articleList = new ArrayList<ArticleVO>();
			if (action == null || action.equals("/listArticles.do")) {// 어떤 매핑정보도 날라오지 않은경우
				// 오늘 코드 추가한부분
				String _section = request.getParameter("section");
				String _pageNum = request.getParameter("pageNum");
				int section = Integer.parseInt((_section == null) ? "1" : _section); // section이 받은값이 null값이냐고 물어보고 맞을시
																						// 1이 들어간다
				int pageNum = Integer.parseInt((_pageNum == null) ? "1" : _pageNum);
				Map<String, Integer> pagingMap = new HashMap<String, Integer>();
				pagingMap.put("section", section);
				pagingMap.put("pageNum", pageNum);
				Map articleMap = boardService.listArticles(pagingMap);
				articleMap.put("section", section);
				articleMap.put("pageNum", pageNum);
				request.setAttribute("articleMap", articleMap);
				// 오늘 코드 추가한부분
				// 오늘 사라진코드 articleList=boardService.listArticles();
				// 오늘 사라진 코드 request.setAttribute("articleList", articleList);
				nextPage = "/boardInfo/listArticles.jsp";
			} else if (action.equals("/articleForm.do")) {
				nextPage = "/boardInfo/articleForm.jsp";
			} else if (action.equals("/addArticle.do")) {
				int articleNo = 0;
				Map<String, String> articleMap = upload(request, response); // 해시맵 구조(java.util)
				String title = articleMap.get("title");
				String content = articleMap.get("content");
				String imageFileName = articleMap.get("imageFileName");
				articleVO.setParentNo(0); // 생략 가능 default 값이 0, 게시물의 답변을 작성할 때 사용 즉, 계층형 DB를 구현하기 위해 작성한 것.
				articleVO.setId("2");
				articleVO.setTitle(title);
				articleVO.setContent(content);
				articleVO.setImageFileName(imageFileName);
				articleNo = boardService.addArticle(articleVO);
				// 새 글 추가 시 이미지를 첨부한 경우에만 수행
				if (imageFileName != null && imageFileName.length() != 0) {
					// temp폴더에 임시로 업로드된 파일 객체를 생성
					File srcFile = new File(IMG_REPO + "\\temp\\" + imageFileName);
					// 새 글 추가된 글번호로 폴더를 생성
					File destDir = new File(IMG_REPO + "\\" + articleNo);
					destDir.mkdir();
					// temp폴더의 파일을 글 번호 폴더로 이동
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
					srcFile.delete(); // 임시로 추가했던 파일 제거
				}
				out = response.getWriter();
				out.print("<script>");
				out.print("alert('새글을 추가했습니다');");
				out.print("location.href='" + request.getContextPath() + "/board/listArticles.do';");
				out.print("</script>");
				return;
			} else if (action.equals("/viewArticle.do")) { // 글 상세창 요청
				String articleNo = request.getParameter("articleNo");
				articleVO = boardService.viewArticle(Integer.parseInt(articleNo));
				request.setAttribute("article", articleVO);
				nextPage = "/boardInfo/viewArticle.jsp";
			} else if (action.equals("/modArticle.do")) {
				Map<String, String> articleMap = upload(request, response);
				int articleNo = Integer.parseInt(articleMap.get("articleNo"));
				String title = articleMap.get("title");
				String content = articleMap.get("content");
				String imageFileName = articleMap.get("imageFileName");
				articleVO.setArticleNo(articleNo);
				articleVO.setParentNo(0);
				articleVO.setId("2");
				articleVO.setTitle(title);
				articleVO.setContent(content);
				articleVO.setImageFileName(imageFileName);
				boardService.modArticle(articleVO);
				// 이미지를 첨부한 경우에만 수행
				if (imageFileName != null && imageFileName.length() != 0) {
					String originalFileName = articleMap.get("originalFileName");
					File srcFile = new File(IMG_REPO + "\\temp\\" + imageFileName);
					File destDir = new File(IMG_REPO + "\\" + articleNo);
					destDir.mkdir();
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
					File oldFile = new File(IMG_REPO + "\\" + articleNo + "\\" + originalFileName);
					oldFile.delete();
				}
				out = response.getWriter();
				out.print("<script>");
				out.print("alert('글을 수정했습니다');");
				out.print("location.href='" + request.getContextPath() + "/board/viewArticle.do?articleNo=" + articleNo
						+ "';");
				out.print("</script>");
				return;
				// 아래 오늘 비교추가한 코드
			} else if (action.equals("/removeArticle.do")) {
				int articleNo = Integer.parseInt(request.getParameter("articleNo"));
				List<Integer> articleNoList = boardService.removeArticle(articleNo);
				for (int no : articleNoList) {
					File imgDir = new File(IMG_REPO + "\\" + no);
					if (imgDir.exists()) {
						FileUtils.deleteDirectory(imgDir);
					}
				}
				out = response.getWriter();
				out.print("<script>");
				out.print("alert('새글을 삭제했습니다.');");
				out.print("location.href='" + request.getContextPath() + "/board/listArticles.do';");
				out.print("</script>");
				return;
			} else if (action.equals("/replyForm.do")) {
				int parentNo = Integer.parseInt(request.getParameter("parentNo"));
				session = request.getSession();
				session.setAttribute("parentNo", parentNo);
				nextPage = "/boardInfo/replyForm.jsp";
			} else if (action.equals("/addReply.do")) {
				session = request.getSession();
				int parentNo = (Integer) session.getAttribute("parentNo");
				session.removeAttribute("parentNo");
				Map<String, String> articleMap = upload(request, response);
				String title = articleMap.get("title");
				String content = articleMap.get("content");
				String imageFileName = articleMap.get("imageFileName");
				articleVO.setParentNo(parentNo);
				articleVO.setId("son");
				articleVO.setTitle(title);
				articleVO.setContent(content);
				articleVO.setImageFileName(imageFileName);
				int articleNo = boardService.addReply(articleVO);
				if (imageFileName != null && imageFileName.length() != 0) {
					File srcFile = new File(IMG_REPO + "\\temp\\" + imageFileName);
					File destDir = new File(IMG_REPO + "\\" + articleNo);
					destDir.mkdir();
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
				}
				out = response.getWriter();
				out.print("<script>");
				out.print("alert('답글을 추가했습니다.');");
				out.print("location.href='" + request.getContextPath() + "/board/viewArticle.do?articleNo=" + articleNo
						+ "';");
				out.print("</script>");
				return;
			}
			// 오늘 비교추가한 코드
			RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
			dispatcher.forward(request, response);
		} catch (Exception e) {
			System.out.println("요청 처리중 에러");
			e.printStackTrace();
		}
	}

//   파일 파일 업로드 + 새 글 관련 정보 저장 메서드
	private Map<String, String> upload(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Map<String, String> articleMap = new HashMap<String, String>();
		String encoding = "utf-8";
		File currentDirPath = new File(IMG_REPO); // 글 이미지 저장 폴더에 대해 파일 객체를 생성
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(currentDirPath);
		factory.setSizeThreshold(1024 * 1024);
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			List items = upload.parseRequest(request);
			for (int i = 0; i < items.size(); i++) {
				FileItem fileItem = (FileItem) items.get(i);
//            if문은 제목과 내용, else문에서는 이미지를 업로드하는 역할
				if (fileItem.isFormField()) {
					System.out.println(fileItem.getFieldName() + " = " + fileItem.getString(encoding));
//               파일 업로드로 같이 전송된 제목, 내용을 매개변수로 Map(key, value)에 저장
					articleMap.put(fileItem.getFieldName(), fileItem.getString(encoding));
				} else {
					System.out.println("파라미터 이름 : " + fileItem.getFieldName());
					System.out.println("파일이름 : " + fileItem.getName());
					System.out.println("파일(이미지) 크기 : " + fileItem.getSize() + "bytes");
					if (fileItem.getSize() > 0) {
						int idx = fileItem.getName().lastIndexOf("\\");
//                  파일 위치를 못 찾았을 때
						if (idx == -1) {
							idx = fileItem.getName().lastIndexOf("/");
						}
						String fileName = fileItem.getName().substring(idx + 1);
						articleMap.put(fileItem.getFieldName(), fileName);
						File uploadFile = new File(currentDirPath + "\\temp\\" + fileName);
						fileItem.write(uploadFile);
					}
				}
			}
		} catch (Exception e) {
			System.out.println("파일 업로드 중 에러!!");
			e.printStackTrace();
		}
		return articleMap;
	}

}