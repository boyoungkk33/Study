$(document).ready(function () {
    let isEmail = false;
    let isPassword = false;

    // 이메일
    $(".input_email").on("input", function () {
        const email = $(this).val();
        const message = $(".warning_email");

        if (!email) {
            $(this).css('border-bottom', '1px solid #ddd');
            message.css('display', 'none');
            isEmail = false;
            activeButton();
            return;
        }

        const isValidEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(email);
        $(this).css('border-bottom', isValidEmail ? '1px solid #ddd' : '1px solid rgb(251, 67, 67)');
        message.css('display', isValidEmail ? 'none' : 'block');
        isEmail = isValidEmail;
        activeButton();
    });

    // 비밀번호
    $(".input_password").on("input", function () {
        const password = $(this).val();
        const message = $(".warning_password");

        if (!password) {
            $(this).css('border-bottom', '1px solid #ddd');
            message.css('display', 'none');
            isPassword = false;
            activeButton();
            return;
        }

        const isValidPassword = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+])[A-Za-z\d!@#$%^&*()_+]{8,16}$/.test(password);
        $(this).css('border-bottom', isValidPassword ? '1px solid #ddd' : '1px solid rgb(251, 67, 67)');
        message.css('display', isValidPassword ? 'none' : 'block');
        isPassword = isValidPassword;
        activeButton();
    });

    // 체크박스 영역
    $('.essential > a, .select > a').on('click', function (event) {
        event.preventDefault();
        $(this).siblings('ul').toggle();
    });

    $('.all').click(function () {
        var isChecked = $(this).prop('checked');
        $(this).closest('.essential, .select').find('.indent input[type="checkbox"]').prop('checked', isChecked);
    });

    $('.indent input[type="checkbox"]').on('click', function () {
        var allChecked = $(this).closest('ul').find('.indent input[type="checkbox"]').length === $(this).closest('ul').find('.indent input[type="checkbox"]:checked').length;
        $(this).closest('.essential, .select').find('.all').prop('checked', allChecked);
    });


    // 회원가입 버튼 클릭
    $('.btn_member').on('click', function (event) {
        const address = $('#postcode').val().length + $('#address').val().length;
        const phone = $('#phone_1').val().length && $('#phone_2').val().length && $('#phone_3').val().length;
        const name = $('#member_name').length;
        const check = $('.essential input[type="checkbox"]:checked').length;

        if (!activeButton()) {
            alert('이메일 또는 비밀번호를 제대로 입력해주시길 바랍니다.');
            return event.preventDefault();
        }

        if (!address || phone != 4 || !name) {
            alert('필수 항목을 모두 작성해주시길 바랍니다.');
            return event.preventDefault();
        }

        if (check != 3) {
            alert('필수 항목을 체크해주시길 바랍니다.');
            return event.preventDefault();
        }

        window.location.href = "register_confirm.html";
    });

    function activeButton() {
        const btn = $('.btn_member');
        const isValid = isEmail && isPassword;

        btn.css({
            backgroundColor: isValid ? '#222' : '#ddd',
            cursor: isValid ? 'pointer' : 'default'
        });

        return isValid;
    }
});
