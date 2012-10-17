package com.amaker.ch03.menu;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;

import com.amaker.test.R;
/**
 * @author ����־
 * ���Բ˵���Դ
 */
public class TestMenuActivity extends Activity {
	private MenuInflater mi;
    @Override
   public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
       setContentView(R.layout.test_menu);
       mi = new MenuInflater(this);
    }
    
    /*
     * �����˵�
     */
    public boolean onCreateOptionsMenu(Menu menu) {
        mi.inflate(R.menu.file_menu, menu);
        return true;
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
    	switch (item.getItemId()) {
		case R.id.about:
			aboutAlert("��ʵ����ʾ�������ʹ��XML�˵���Դ������˵���");
			break;
		case R.id.exit:
			exitAlert("���Ҫ�˳���");
			break;
		}
    	return true;
    }
    
	// ��ʾ�Ի���
	private void exitAlert(String msg){
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setMessage(msg)
		       .setCancelable(false)
		       .setPositiveButton("ȷ��", new DialogInterface.OnClickListener() {
		           public void onClick(DialogInterface dialog, int id) {
		        	   finish();
		           }
		       }).setNegativeButton("ȡ��", new DialogInterface.OnClickListener() {
		           public void onClick(DialogInterface dialog, int id) {
		        	   return;
		           }
		       });
		AlertDialog alert = builder.create();
		alert.show();
	}
	
	// ��ʾ�Ի���
	private void aboutAlert(String msg){
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setMessage(msg)
		       .setCancelable(false)
		       .setPositiveButton("ȷ��", new DialogInterface.OnClickListener() {
		           public void onClick(DialogInterface dialog, int id) {
		           }
		       });
		AlertDialog alert = builder.create();
		alert.show();
	}

}