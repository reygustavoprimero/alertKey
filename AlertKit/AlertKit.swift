// AlertKit.swift
//
// Copyright (c) 2015 Thi Doan
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit

extension UIViewController {

    /**
        Present an alert controller with a title, a message and an OK button. Tap the OK button will dissmiss the alert.

        :param: title The title of the alert.
        :param: message The message content of the alert.
    */
    public func showAlert(title: String?, message: String?) {
        showAlert(title, message: message, cancelButtonTitle: "OK")
    }

    /**
        Present an alert controller with a title, a message and a cancel/dismiss button with a title of your choice.

        :param: title The title of the alert.
        :param: message The message content of the alert.
        :param: cancelButtonTitle Title of the cancel button of the alert.
    */
    public func showAlert(title: String?, message: String?, cancelButtonTitle: String) {
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .Cancel, handler: nil)
        showAlert(title, message: message, alertActions: [cancelAction])
    }

    /**
        Present an alert controller with a title, a message and an array of handler actions.

        :param: title The title of the alert.
        :param: message The message content of the alert.
        :param: alertActions An array of alert action in UIAlertAction class.
    */
    public func showAlert(title: String?, message: String?, alertActions: [UIAlertAction]) {
        showAlert(title, message: message, preferredStyle: .Alert, alertActions: alertActions)
    }

    /**
        Present an action sheet with a title, a message and an OK button. Tap the OK button will dissmiss the alert.

        :param: title The title of the action sheet.
        :param: message The message content of the action sheet.
    */
    public func showActionSheet(title: String?, message: String?) {
        showActionSheet(title, message: message, cancelButtonTitle: "OK")
    }

    /**
        Present an action sheet with a title, a message and a cancel/dismiss button with a title of your choice.

        :param: title The title of the action sheet.
        :param: message The message content of the action sheet.
        :param: cancelButtonTitle The title of the cancel button of the action sheet.
    */
    public func showActionSheet(title: String?, message: String?, cancelButtonTitle: String) {
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .Cancel, handler: nil)
        showActionSheet(title, message: message, alertActions: [cancelAction])
    }

    /**
        Present an action sheet with a title, a message and an array of handler actions.

        :param: title The title of the action sheet.
        :param: message The message content of the action sheet.
        :param: alertActions An array of alert actions in UIAlertAction class.
    */
    public func showActionSheet(title: String?, message: String?, alertActions: [UIAlertAction]) {
        showAlert(title, message: message, preferredStyle: .ActionSheet, alertActions: alertActions)
    }

    /**
        Present an alert or action sheet with a title, a message and an array of handler actions.

        :param: title The title of the alert/action sheet.
        :param: message The message content of the alert/action sheet.
        :param: alertActions An array of alert action in UIAlertAction class.
    */
    public func showAlert(title: String?, message: String?, preferredStyle: UIAlertControllerStyle, alertActions: [UIAlertAction]) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)

        for alertAction in alertActions {
            alertController.addAction(alertAction)
        }

        self.presentViewController(alertController, animated: true, completion: nil)
    }
}
