import { Component } from "@angular/core";

@Component({
  selector: "app-tab2",
  templateUrl: "tab2.page.html",
  styleUrls: ["tab2.page.scss"]
})
export class Tab2Page {
  buttonName = "Change";
  son = "Zac";
  constructor() {}

  changeText() {
    if (this.buttonName == "Change") {
      this.buttonName = "Uh oh";
    } else {
      this.buttonName = "Change";
    }

    if (this.son == "Zac") {
      this.son = "Josh";
    } else {
      if (this.son == "Josh") {
        this.son = "Noah";
      } else {
        if (this.son == "Noah") {
          this.son = "Zac";
        }
      }
    }
  }
}
