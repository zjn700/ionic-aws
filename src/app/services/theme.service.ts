import { Injectable } from "@angular/core";
import { BehaviorSubject } from "rxjs";

@Injectable({
  providedIn: "root",
})
export class ThemeService {
  private defaultTheme = "ilo-colors-light";
  private themeSource = new BehaviorSubject(this.defaultTheme);

  public currentTheme = this.themeSource.asObservable();

  constructor() {}

  changeTheme(theme: string) {
    this.themeSource.next(theme);
  }
}
