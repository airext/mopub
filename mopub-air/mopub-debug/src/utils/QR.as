/**
 * Created by max on 7/16/16.
 */
package utils
{
import com.sbhave.nativeExtensions.zbar.Scanner;
import com.sbhave.nativeExtensions.zbar.ScannerEvent;

import flash.system.Capabilities;

public class QR
{
    public static function scanAndFill(input:Object):void
    {
        if (Scanner.isSupported)
        {
            var scanner:Scanner = new Scanner();

            scanner.addEventListener(ScannerEvent.SCAN, function(event:ScannerEvent):void
            {
                scanner.removeEventListener(ScannerEvent.SCAN, arguments.callee);

                input.text = event.data;

                scanner.pausePreview();
                scanner.dispose();
                scanner = null;
            });

            scanner.startPreview("back");

            if (Capabilities.version.substr(0, 3).toUpperCase() == "AND")
            {
                scanner.setCameraOrientation(90);
            }

            scanner.attachScannerToPreview();
        }
        else
        {
            input.text = Math.random();
        }
    }
}
}
