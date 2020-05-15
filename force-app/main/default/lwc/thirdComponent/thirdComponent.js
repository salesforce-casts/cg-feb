import { LightningElement, wire } from "lwc";

import accountList from "@salesforce/apex/SecondLWCController.accountList";

export default class ThirdComponent extends LightningElement {
  @wire(accountList) aList;
}