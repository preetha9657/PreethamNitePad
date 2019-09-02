package com.example.notepadpractice.view.ui;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;

import android.view.Menu;
import android.view.MenuItem;



import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;

import com.example.notepadpractice.R;
import com.example.notepadpractice.service.model.Note;
import com.example.notepadpractice.service.repository.NoteDatabase;
import com.google.android.material.textfield.TextInputEditText;

import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import static com.example.notepadpractice.util.Constants.DATE_FORMAT;
import static com.example.notepadpractice.util.Constants.UPDATE_NOTE;


public class AddNoteActivity extends AppCompatActivity {

    private TextInputEditText et_title,et_content;
    private NoteDatabase noteDatabase;
    private Note note;
    private boolean update;

    @RequiresApi(api = Build.VERSION_CODES.O)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_note);
        et_title = findViewById(R.id.et_title);
        et_content = findViewById(R.id.et_content);
        noteDatabase = NoteDatabase.getInstance(AddNoteActivity.this);
        if ( (note = (Note) getIntent().getSerializableExtra("note"))!=null ){
            getSupportActionBar().setTitle(UPDATE_NOTE);
            update = true;
            et_title.setText(note.getTitle());
            et_content.setText(note.getContent());
        }


    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_menu_done:
                if (update){
                    note.setContent(et_content.getText().toString());
                    note.setTitle(et_title.getText().toString());
                    note.setDate(presentDate());
                    noteDatabase.getNoteDao().updateNote(note);
                    setResult(note,2);
                }else {
                    note = new Note(et_content.getText().toString(), et_title.getText().toString(),presentDate());
                    new InsertTask(AddNoteActivity.this,note).execute();
                }
                break;

        }
        return false;
    }

    private void setResult(Note note, int flag){
        setResult(flag,new Intent().putExtra("note",note));
        finish();
    }

    private static class InsertTask extends AsyncTask<Void,Void,Boolean> {

        private WeakReference<AddNoteActivity> activityReference;
        private Note note;

        // only retain a weak reference to the activity
        InsertTask(AddNoteActivity context, Note note) {
            activityReference = new WeakReference<>(context);
            this.note = note;
        }

        // doInBackground methods runs on a worker thread
        @Override
        protected Boolean doInBackground(Void... objs) {
            // retrieve auto incremented note id
            long j = activityReference.get().noteDatabase.getNoteDao().insertNote(note);
            note.setNote_id(j);
            return true;
        }

        // onPostExecute runs on main thread
        @Override
        protected void onPostExecute(Boolean bool) {
            if (bool){
                activityReference.get().setResult(note,1);
                activityReference.get().finish();
            }
        }
    }

    private String presentDate(){
        Calendar c = Calendar.getInstance();
        SimpleDateFormat df = new SimpleDateFormat(DATE_FORMAT);
        String formattedDate = df.format(c.getTime());

        return formattedDate;
    }


}
