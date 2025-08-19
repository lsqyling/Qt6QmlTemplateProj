import QtQuick
import QtQuick.Controls


ComboBox {
    id: combox
    // model: ["button", "checkbox", "popup"]
    textRole: "text"
    valueRole: "price"
    width: 200
    currentIndex: 1
    displayText: currentText + " " + currentValue
    model: [
        { text: "Banana", price: 3.5 },
        { text: "Apple", price: 3.8 },
        { text: "Coconut", price: 4.5 }
    ]
    editable: true
    // validator: IntValidator {
    //     top: 100
    //     bottom: 0
    // }
    validator: RegularExpressionValidator {
        regularExpression: /[0-9A-F]+[.][0-9]/
    }
    onAcceptableInputChanged: {
        console.log("AcceptableInput: " + acceptableInput)
    }
    onAccepted: {
        if (find(editText) === -1) {
            model.append({text: editText})
        }
    }
    onCurrentTextChanged: {
        console.log("CurrentText: " + currentText)
    }
    onCurrentValueChanged: {
        console.log("CurrentValue: " + currentValue)
    }
    
}


































