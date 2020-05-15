import { LightningElement, wire } from "lwc";

import f from "@salesforce/apex/SecondLWCController.foobar";

export default class SecondComponent extends LightningElement {
  @wire(f)
  foobarfunc(data, error) {
    if (data) {
      console.log(data);
    } else {
      console.log(error);
    }
  }
}