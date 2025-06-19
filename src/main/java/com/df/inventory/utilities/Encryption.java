/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.utilities;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/**
 *
 * @author mulyadi
 */
public class Encryption {

    String ivSpecString = "1108133711429022";
    String secretKey = "come_as_you_are_";

    public String cbcEncrypt(String payload) {
        try {
            IvParameterSpec ivspec = new IvParameterSpec(ivSpecString.getBytes("UTF-8"));
            SecretKeySpec keySpec = new SecretKeySpec(secretKey.getBytes("UTF-8"), "AES");
            Cipher cip = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cip.init(Cipher.ENCRYPT_MODE, keySpec, ivspec);
            byte[] cipherText = cip.doFinal(payload.getBytes());
            return Base64.getEncoder().encodeToString(cipherText);
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException | InvalidAlgorithmParameterException | IllegalBlockSizeException | BadPaddingException ex) {
            Logger.getLogger(Encryption.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public String cbcDecrypt(String payload) {
        try {
            IvParameterSpec ivspec = new IvParameterSpec(ivSpecString.getBytes("UTF-8"));
            SecretKeySpec keySpec = new SecretKeySpec(secretKey.getBytes("UTF-8"), "AES");
            Cipher cip = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cip.init(Cipher.DECRYPT_MODE, keySpec, ivspec);
            byte[] originalData = cip.doFinal(Base64.getDecoder().decode(payload));
            return new String(originalData);
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException | InvalidAlgorithmParameterException | IllegalBlockSizeException | BadPaddingException ex) {
            Logger.getLogger(Encryption.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

}
