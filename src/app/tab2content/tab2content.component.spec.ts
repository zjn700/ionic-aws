import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { Tab2contentComponent } from './tab2content.component';

describe('Tab2contentComponent', () => {
  let component: Tab2contentComponent;
  let fixture: ComponentFixture<Tab2contentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Tab2contentComponent ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(Tab2contentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
