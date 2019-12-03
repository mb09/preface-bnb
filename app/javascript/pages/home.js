import "bubbly-bg";

const initHome = () =>{
  if($(".home_page").length)
  {
    let background = document.querySelector(".bubbly");
    bubbly({
      blur: 10,
      canvas: background,
      colorStart: "#00033F", // default is blue-ish
      colorStop: "#00033F",

      bubbleFunc: () => `hsla(169, 100%, 37%, ${Math.random() * 0.25})`
    });
  }
}
export {initHome};
