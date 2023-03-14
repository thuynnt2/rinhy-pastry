let getCategoryThumbnail = (place) => {
  let createCard = (category) => {
    let card = document.createElement("div");
    card.innerHTML = `
        <div class="cate--content relative flex flex-col items-center mb-3">
            <a href="/shop/${category.id}">
                <div class="thumbnail overflow-hidden h-[335px] w-[335px]">
                    <img src="/${category.thumbnail}" alt="">
                </div>
                <div class="content__hover absolute top-0 left-[0.4rem] items-center justify-center">
                    <span class="text-3xl">${category.name}</span>
                </div>
            </a>
        </div>
    `;
    return card;
  };
  let renderCard = (place, card) => {
    let root = document.getElementById(place);
    root.appendChild(card);
  };
  fetch(`http://localhost:3000/api/categories`)
    .then((res) => res.json())
      .then((categories) => {
          categories.forEach((category) => {
            renderCard(place, createCard(category));
        })
    });
};
