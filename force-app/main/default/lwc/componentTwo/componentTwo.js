import { LightningElement, api } from "lwc";

export default class ComponentTwo extends LightningElement {
  @api location = "Hyderabad"; //you can only define the default value

  @api calculateInterest() {}
  constructor() {
    console.log("Am in constructor");
  }

  connectedCallback() {
    console.log("Am in connectedCallback");
  }

  disconnectedCallback() {
    console.log("Am in disconnectedCallback");
  }

  renderedCallback() {
    console.log("Am in renderedCallback");
  }

  errorCallback() {
    console.log("Am in errorCallback");
  }

  hadleClick() {
    this.dispatchEvent(new CustomEvent("teja"));
  }
}
