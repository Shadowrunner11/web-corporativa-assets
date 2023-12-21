function initMatrixComparison(){
  function lenseViewStatus(element, cb, options) {
    let positionStatus = "exit";
  
    const observer = new IntersectionObserver((entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting && positionStatus === "exit") {
          positionStatus = "entered";
        } else if (!entry.isIntersecting && positionStatus === "entered")
          positionStatus = "exit";
  
        if (cb) cb(positionStatus);
      });
    }, options);
  
    observer.observe(element);
    observer.observe = () => {
      throw new Error("observer already used");
    };
    return [observer, () => positionStatus];
  }
  
  const fakeHeaderRow = document.body.querySelector(
    '[data-id="fake-header-row"]'
  );
  
  const table = document.body.querySelector('[data-id="table"]');
  
  const tableHeader = document.body.querySelector('[data-id="table-header"]');
  
  const [tableHeaderObserver, getTableHeaderStatus] = lenseViewStatus(
    tableHeader,
    (status) => {
      if (status === "exit")
        return fakeHeaderRow.classList.replace(
          "fake-header-row--hide",
          "fake-header-row--show"
        );
  
      fakeHeaderRow.classList.replace(
        "fake-header-row--show",
        "fake-header-row--hide"
      );
    }
  );
  
  const [tableObserver, getTableStatus] = lenseViewStatus(table, (status) => {
    if (status === "exit")
      fakeHeaderRow.classList.replace(
        "fake-header-row--show",
        "fake-header-row--hide"
      );
    else if (getTableHeaderStatus() === "exit")
      fakeHeaderRow.classList.replace(
        "fake-header-row--hide",
        "fake-header-row--show"
      );
  });
  
  const slidesPerView = window.innerWidth >= 680 ? 3 : "auto";
  
  console.log(slidesPerView);
  
  const centeredSlides = false;
  
  const spaceBetween = 0;
  
  const a = new Swiper('[data-id="body-columns"]', {
    slidesPerView,
    spaceBetween,
    grabCursor: true,
    centeredSlides
  });
  
  const b = new Swiper('[data-id="fake-body-columns"]', {
    slidesPerView,
    spaceBetween: 0,
    grabCursor: true
  });
  
  function createReactToSlide(time = 150) {
    let aleadyRun = false;
    return function (b) {
      return function () {
        if (aleadyRun) {
          aleadyRun = false;
          return;
        }
        aleadyRun = true;
        b.slideTo(this.activeIndex, time, false);
      };
    };
  }
  const reactToSlide = createReactToSlide();
  a.on("slideChange", reactToSlide(b));
  b.on("slideChange", reactToSlide(a));
  
  const swiperTableBody = document.body.querySelector(
    '[data-id="swiper-table-body"]'
  );
  function handleChangeCurency(event) {
    const dataCurrency = event.target.getAttribute("data-currency");
    if (!dataCurrency) return;
    const columnId = event.target.getAttribute("data-column-id");
    const columns = [
      ...document.body.querySelectorAll(`[data-id="${columnId}"]`)
    ];
  
    const columnToShow = columns.find(
      (e) => e.getAttribute("data-currency-id") === dataCurrency
    );
    const columnToHide = columns.find(
      (e) => e.getAttribute("data-currency-id") !== dataCurrency
    );
  
    columnToShow.classList.remove("hide");
    columnToHide.classList.add("hide");
  }
  fakeHeaderRow.addEventListener("click", handleChangeCurency);
  swiperTableBody.addEventListener("click", handleChangeCurency);
}