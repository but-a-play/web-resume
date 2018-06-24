/**  
* @function 
* @author zhaozhou
* @date 2018年5月17日  
* @version 1.0  
*/  
package util;

import java.io.Serializable;

import org.apache.shiro.util.SimpleByteSource;

/**
 * @author Mr.X
 *
 */
public class MySimpleByteSource extends SimpleByteSource implements Serializable {

	private static final long serialVersionUID = 1L;

    public MySimpleByteSource(byte[] bytes) {
        super(bytes);
    }


}
