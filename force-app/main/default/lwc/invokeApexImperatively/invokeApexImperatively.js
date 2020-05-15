import { LightningElement, wire } from "lwc";

import foobar from "@salesforce/apex/invokeApexImperativelyController.fooabr";

export default class InvokeApexImperatively extends LightningElement {
  //life cycle hooks

  //custom method
  handleClick() {
    let a = foobar();
    console.log(a);
  }
}
