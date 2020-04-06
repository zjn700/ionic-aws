import { Component, OnInit } from "@angular/core";
import { lessons } from "../../assets/Lessons";
import { ThemeService } from "../services/theme.service";
//comments are in green
@Component({
  selector: "app-tab1",
  templateUrl: "tab1.page.html",
  styleUrls: ["tab1.colors-default.scss"],
  //styleUrls: ["tab1.page.scss"]
})
export class Tab1Page implements OnInit {
  lessons = lessons;
  //items = [0, 1];
  theme: string = "ilo-colors-light";

  //@Output() themeEvent = new EventEmitter<string>();

  constructor(private themeService: ThemeService) {
    console.log(lessons);
  }

  ngOnInit() {
    this.themeService.currentTheme.subscribe((theme) => (this.theme = theme));
  }
  changeTheme() {
    if (this.theme === "ilo-colors-light") {
      this.theme = "ilo-colors-dark";
    } else {
      this.theme = "ilo-colors-light";
    }
    console.log("tab1", this.theme);
    this.themeService.changeTheme(this.theme);
    //this.themeEvent.emit(this.theme);
  }
}
