/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */
public void typeCbx_clickEvt(GDropList source, GEvent event) { //_CODE_:typeCbx:342525:
  sinePlotChckbx.setEnabled(typeCbx.getSelectedIndex() == 0 ? true : false );
} //_CODE_:typeCbx:342525:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:slider1:334156:
  
} //_CODE_:slider1:334156:

public void checkbox1_clicked1(GCheckbox source, GEvent event) { //_CODE_:sinePlotChckbx:934500:
  if(source.isSelected()){
    slider1.setValue(5.0f);
  }else{
    slider1.setValue(1.0f);
  }
} //_CODE_:sinePlotChckbx:934500:

public void windowTypeCbx_click1(GDropList source, GEvent event) { //_CODE_:windowTypCbx:8787println(FFT.GAUSS);03:
  Field[] fs = FFT.class.getFields();
  for(Field f : fs){
    //println(f.toString().toLowerCase());
     if(f.toString().toLowerCase().contains(source.getSelectedText().toLowerCase())){
       try{
         println(f.get(null));
         fftLin.window((WindowFunction)f.get(null));
       }catch(IllegalAccessException e){
         e.printStackTrace();
       }
     }
  }
  
} //_CODE_:windowTypCbx:878703:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(true);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Natalie");
  typeCbx = new GDropList(this, 31, 38, 192, 80, 3);
  typeCbx.setItems(loadStrings("list_342525"), 0);
  typeCbx.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  typeCbx.addEventHandler(this, "typeCbx_clickEvt");
  slider1 = new GSlider(this, 238, 25, 100, 48, 10.0);
  slider1.setShowValue(true);
  slider1.setLimits(5, 1, 10);
  slider1.setNbrTicks(10);
  slider1.setStickToTicks(true);
  slider1.setShowTicks(true);
  slider1.setNumberFormat(G4P.INTEGER, 0);
  slider1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  slider1.setOpaque(false);
  slider1.addEventHandler(this, "slider1_change1");
  sinePlotChckbx = new GCheckbox(this, 361, 38, 135, 23);
  sinePlotChckbx.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  sinePlotChckbx.setText("Standard spectrum plot");
  sinePlotChckbx.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sinePlotChckbx.setOpaque(false);
  sinePlotChckbx.addEventHandler(this, "checkbox1_clicked1");
  sinePlotChckbx.setSelected(true);
  windowTypCbx = new GDropList(this, 509, 38, 132, 80, 3);
  windowTypCbx.setItems(loadStrings("list_878703"), 0);
  windowTypCbx.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  windowTypCbx.addEventHandler(this, "windowTypeCbx_click1");
}

// Variable declarations 
// autogenerated do not edit
GDropList typeCbx; 
GSlider slider1; 
GCheckbox sinePlotChckbx; 
GDropList windowTypCbx; 
