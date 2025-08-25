# Keep your app's specific packages
-keep class com.magamal.newsapp.** { *; }

# Network libraries
-keep class retrofit2.** { *; }
-keep class okhttp3.** { *; }
-keep class com.squareup.okhttp.** { *; }
-keep class okio.** { *; }
-keep class com.google.gson.** { *; }

# Retrofit interfaces
-keepclasseswithmembers interface * {
    @retrofit2.http.* <methods>;
}

# Dio
-keep class io.flutter.plugins.** { *; }
-keep class com.dio.** { *; }

# JSON serialization
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes Exceptions
-keep class kotlin.Metadata { *; }
-keep class * implements com.google.gson.TypeAdapter
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer

# Keep serializable objects
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# Keep enums
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep all model classes
-keep class **.model.** { *; }
-keep class **.data.** { *; }
-keep class **.entity.** { *; }
-keep class **.dto.** { *; }
-keep class **.api.** { *; }
-keep class **.response.** { *; }
-keep class **.request.** { *; }

# If using Hive
-keep class **.hive.** { *; }
-keep class io.hive.** { *; }

# If using Moshi
-keep class com.squareup.moshi.** { *; }
