package com.brats.bratsboom;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.util.HashMap;

public class RegisterActivity extends AppCompatActivity {

    EditText username, fullname, email, password;
    Button register;
    TextView txt_login;

    FirebaseAuth auth;
    DatabaseReference reference;
    ProgressDialog pd;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);

        username=findViewById(R.id.username);
        fullname=findViewById(R.id.fullname);
        email=findViewById(R.id.email);
        password=findViewById(R.id.password);
        register=findViewById(R.id.register);
        txt_login=findViewById(R.id.txt_login);
        auth=FirebaseAuth.getInstance();

        txt_login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(RegisterActivity.this,LoginActivity.class));
            }
        });
        register.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                pd=new ProgressDialog(RegisterActivity.this);
                pd.setMessage("Lutfen Bekleyin...");
                pd.show();
                String str_username= username.getText().toString();
                String str_fullname= fullname.getText().toString();
                String str_email= email.getText().toString();
                String str_password= password.getText().toString();
                boolean kontrol= str_email.contains("edu");
                if(TextUtils.isEmpty(str_username)|| TextUtils.isEmpty(str_fullname)
                        || TextUtils.isEmpty(str_email)||TextUtils.isEmpty(str_password)) {
                    Toast.makeText(RegisterActivity.this, "Butun yerler doldurulmasi zorunludur!", Toast.LENGTH_SHORT).show();
                }
                else if (str_password.length()<6){
                    Toast.makeText(RegisterActivity.this,"Sifreniz 6 karakterden uzun olmalidir!",Toast.LENGTH_SHORT).show();
                }
                else if(kontrol==false){
                    Toast.makeText(RegisterActivity.this,"Lutfen Üniversite tarafindan verilen E-mail ile kayit olunuz!",Toast.LENGTH_SHORT).show();
                }
                else{
                    register(str_username,str_fullname,str_email,str_password);
                }
            }

        });
    }
    private void register(final String username, final String fullname, String email, String password) {
        auth.createUserWithEmailAndPassword(email, password).addOnCompleteListener(RegisterActivity.this, new OnCompleteListener<AuthResult>() {

            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {
                if(task.isSuccessful()){
                    final FirebaseUser firebaseUser =auth.getCurrentUser();
                    String userid = firebaseUser.getUid();

                    reference = FirebaseDatabase.getInstance().getReference().child("Users").child(userid);

                    HashMap<String,Object> hashMap =new HashMap<>();
                    hashMap.put("id",userid);
                    hashMap.put("username",username.toLowerCase());
                    hashMap.put("fullname",fullname);
                    hashMap.put("email",userid);
                    hashMap.put("password",userid);
                    hashMap.put("imageurl","https://firebasestorage.googleapis.com/v0/b/bratsboom.appspot.com/o/yasko.jpg?alt=media&token=29cfaa10-062e-4c7a-be65-5940226ba6f3");
                    reference.setValue(hashMap).addOnCompleteListener(new OnCompleteListener<Void>() {
                        @Override
                        public void onComplete(@NonNull Task<Void> task) {
                            if(firebaseUser.isEmailVerified()){
                                if(task.isSuccessful()){
                                    pd.dismiss();
                                    Intent intent= new Intent(RegisterActivity.this,MainActivity.class);
                                    intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK | Intent.FLAG_ACTIVITY_NEW_TASK);
                                    startActivity(intent);
                                 }
                            }
                            else{
                                firebaseUser.sendEmailVerification().addOnCompleteListener(new OnCompleteListener<Void>(){
                                    @Override
                                    public void onComplete(@NonNull Task<Void> task) {
                                        Toast.makeText(RegisterActivity.this,"Hesabinizi onaylamaniz icin emailinize dogrulama kodu gonderildi",Toast.LENGTH_SHORT).show();
                                    }
                                });
                            }
                        }
                    });
                }else{
                    pd.dismiss();
                    Toast.makeText(RegisterActivity.this,"Bu mail veya sifre ile giris yapamazsiniz",Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
}














