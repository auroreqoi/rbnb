import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"
import { shake } from "@scenejs/effects";

export default class extends Controller {
  static targets = ["bells"]

  connect() {

    this.channel = consumer.subscriptions.create("NotificationsChannel", {
      received(data) {
        let bell = document.getElementById("bells")
        bell.classList.add("fas")
        bell.classList.remove("far")
        shake({
          properties: {
            transform: {
              translateX: "0px",
              translateY: ["-3px", "3px"],
              rotate: "3deg",
              scale: [0.8, 1],
            },
          },
          frequency: 6,
        })
        .setDuration(1)
        .setIterationCount(4)
        .setSelector("#bells")
        .play();
      }
    });
  }
}
