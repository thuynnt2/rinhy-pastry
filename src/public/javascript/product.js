
let getProductsHot = (place) => {
    let createCard = (product) => {
      let card = document.createElement("div");
      card.innerHTML = `
        <div class="home__product--container flex flex-col items-center mb-5">
            <a href="/shop/${product.cateId}/${product.id}">
                <div class="container--thumbnail">
                    <img src="${product.thumbnail}" alt="">
                </div>
                <div class="container__content text-center">
                    <p class="content---title text-[1.23rem] mt-3 mb-1">${
                      product.name
                    }</p>
                    <p class="content--price text-[1.25rem]">${product.price.toLocaleString(
                      "it-IT",
                      { style: "currency", currency: "VND" }
                    )}</p>
                </div>
            </a>
        </div>
    `;
        return card;
    }
    let renderCard = (place, card) => {
      let root = document.getElementById(place);
              root.appendChild(card);
    }
  fetch(`http://localhost:3000/api/products/hot/isHot`)
    .then((res) => res.json())
      .then((products) => {
          for (let i = 0; i < 8; i++){
              renderCard(place, createCard(products[i]));
          }
    });
};
