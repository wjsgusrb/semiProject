
const currentPage = document.getElementsByClassName("nav-item");
const currentPagea = document.querySelectorAll(".nav>.nav-item>a");
for (const current of currentPage) {
    current.onclick = function () {
        for (const a of currentPagea) {
            a
                .classList
                .remove("active");
        }
        const noticeNo = this.childNodes[1];
        noticeNo
            .classList
            .add("active");
    }
}
