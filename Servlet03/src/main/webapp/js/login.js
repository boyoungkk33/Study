$(document).ready(function () {
    let isEmail = false;
    let isPassword = false;

    $(".input_email").on("input", function () {
        const email = $(this).val();
        const message = $(".warning_email");

        if (!email) {
            $(this).css('border-bottom', '1px solid #ddd');
            message.css('display', 'none');
            isEmail = false;
            return;
        }

        const isValidEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(email);
        $(this).css('border-bottom', isValidEmail ? '1px solid #ddd' : '1px solid rgb(251, 67, 67)');
        message.css('display', isValidEmail ? 'none' : 'block');
        isEmail = isValidEmail;
    });


    $(".input_password").on("input", function () {
        const password = $(this).val();
        const message = $(".warning_password");

        if (!password) {
            $(this).css('border-bottom', '1px solid #ddd');
            message.css('display', 'none');
            isPassword = false;
            return;
        }

        const isValidPassword = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+])[A-Za-z\d!@#$%^&*()_+]{8,16}$/.test(password);
        $(this).css('border-bottom', isValidPassword ? '1px solid #ddd' : '1px solid rgb(251, 67, 67)');
        message.css('display', isValidPassword ? 'none' : 'block');
        isPassword = isValidPassword;
    });

    $('.btn_member').on('click', function (event) {
        if (!activeButton()) {
            event.preventDefault();
            alert('이메일 또는 비밀번호를 제대로 입력해주시길 바랍니다.');
            return;
        }

        alert('로그인 성공');
    });

    function activeButton() {
        return isEmail && isPassword;
    }
});
