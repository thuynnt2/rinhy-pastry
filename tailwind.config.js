/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "**/*.{html,ejs}",
    "*/*.{html,ejs}",
    "./src/resources/views/user/home.ejs",
    "./src/resources/views/user/shop.ejs",
    "./src/resources/views/user/shop-detail.ejs",
    "./src/resources/views/user/cart.ejs",
    "./src/resources/views/admin/home.ejs",
  ],
  darkMode: "class", // or 'media' or 'class'
  theme: {
    boxShadow: {
      "custom-shadow-1": "rgba(149, 157, 165, 0.2) 0px 8px 24px",
    },
    screens: {
      xs: "23.4375em",
      sm: "36em",
      // => @media (min-width: 650px) { ... }

      md: "48em",
      // => @media (min-width: 768px) { ... }

      lg: "62em",
      // => @media (min-width: 1024px) { ... }

      xl: "75em",
      // => @media (min-width: 1280px) { ... }

      "2xl": "87.5em",
      // => @media (min-width: 1536px) { ... }
    },
    fontSize: {
      xs: ".75rem",
      sm: ".875rem",
      base: "1rem",
      lg: "1.125rem",
      xl: "1.25rem",
      title: "3.188rem",
      "2xl": "1.5rem",
      "3xl": "1.875rem",
      "4xl": "2.25rem",
      "5xl": "3rem",
      "6xl": "4rem",
      "7xl": "5rem",
    },
    fontFamily: {
      "primary-font": "'Open Sans', sans-serif",
      "great-vibes": "'Great Vibes', cursive",
    },

    extend: {
      spacing: {
        30: "7.5rem",
        0.75: "0.188rem",
        2.5: "0.75rem",
        26: "6.5rem",
        1.5: "0.375rem",
        7.5: "1.875rem",
        2.25: "0.625rem",
        15: "3.75rem",
        18: "4.5rem",
        7: "1.75rem",
        19: "4.75rem",
        12.5: "3.125rem",
      },
      colors: {
        "primary-color": "#3bb77e",
        "secondary-color": "#ffba43",
        "white-color": "#ffffff",
        "white-light-color": "#e6e6e6",
        "title-color": "#1c2137",
        "sub-title-color": "#ffba43",
        "body-text": "#4a4a4a",
        "descr-text": "#6c7689",
        "light-green-color": "#e2f9ee",
        "light-yellow-color": "#fff8ed",
        "warning-color": "#ff0000",
        "light-grey": "#f9faff",
        "whiten-bg-color": "#f9faff",
        "modal-bg-color": "rgba(0, 0, 0, 0.7)",
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};

// Không cần tạo file mới chỉ cần
// 1. Thêm thẻ <link rel="stylesheet" href="public/css/tailwindCommon.css">
// 2. Chạy lệnh dưới đây để khởi động TailwindCSS
// npx tailwindcss -i ./public/css/tailwind/tailwindCommon.css -o ./public/css/tailwindCommon.css --watch
