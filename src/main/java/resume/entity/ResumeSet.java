/**  
* @function 
* @author zhaozhou
* @date 2018年4月19日  
* @version 1.0  
*/
package resume.entity;

public class ResumeSet {

	private String color;
	private String font;
	private String fontSize;
	private String padding;
	private String margin;
	private String fontType;

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getFont() {
		return font;
	}

	public void setFont(String font) {
		this.font = font;
	}

	public String getFontSize() {
		return fontSize;
	}

	public void setFontSize(String fontSize) {
		this.fontSize = fontSize;
	}

	public String getPadding() {
		return padding;
	}

	public void setPadding(String padding) {
		this.padding = padding;
	}

	public String getMargin() {
		return margin;
	}

	public void setMargin(String margin) {
		this.margin = margin;
	}

	public String getFontType() {
		return fontType;
	}

	public void setFontType(String fontType) {
		this.fontType = fontType;
	}

	public ResumeSet(String color, String font, String fontSize, String padding, String margin, String fontType) {
		super();
		this.color = color;
		this.font = font;
		this.fontSize = fontSize;
		this.padding = padding;
		this.margin = margin;
		this.fontType = fontType;
	}

	public ResumeSet() {
		super();
	}

	@Override
	public String toString() {
		return "ResumeSet [color=" + color + ", font=" + font + ", fontSize=" + fontSize + ", padding=" + padding
				+ ", margin=" + margin + ", fontType=" + fontType + "]";
	}

}
