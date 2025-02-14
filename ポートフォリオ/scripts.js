let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    let i;
    let slides = document.getElementsByClassName("mySlides");
    let dots = document.getElementsByClassName("dot");
    if (n > slides.length) {slideIndex = 1}
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
}

function selectTour(tourName) {
    document.getElementById('selectedTour').value = tourName;
}

document.getElementById('bookingForm').addEventListener('submit', function(event) {
    event.preventDefault(); // フォーム送信を防ぐ

    const selectedTour = document.getElementById('selectedTour').value;
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const date = document.getElementById('date').value;

    alert(`ツアー: ${selectedTour}\nお名前: ${name}\nメールアドレス: ${email}\n予約日: ${date}`);

    // ここでサーバーに予約データを送信する処理を追加できます
});

document.getElementById('contactForm').addEventListener('submit', function(event) {
    event.preventDefault(); // フォーム送信を防ぐ

    const contactName = document.getElementById('contactName').value;
    const contactEmail = document.getElementById('contactEmail').value;
    const message = document.getElementById('message').value;

    alert(`お名前: ${contactName}\nメールアドレス: ${contactEmail}\nメッセージ: ${message}`);

    // ここでサーバーにお問い合わせデータを送信する処理を追加できます
});
