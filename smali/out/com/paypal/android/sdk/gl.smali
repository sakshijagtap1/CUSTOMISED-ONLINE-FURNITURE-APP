.class public final Lcom/paypal/android/sdk/gl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/go;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/gl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    const/4 v2, 0x0

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAEgAAAAyCAYAAAD/VJ3gAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2hpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDowQTgwMTE3NDA3MjA2ODExODA4Mzk0Mzc5Rjc5QzhFNiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo2NzNGMzY4RUE1MTUxMUUzQkJERUMzQjVDODJGNTgzQyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo2NzNGMzY4REE1MTUxMUUzQkJERUMzQjVDODJGNTgzQyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChNYWNpbnRvc2gpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NjJFMUU5MzMzNzIxNjgxMTgwODM5NDM3OUY3OUM4RTYiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MEE4MDExNzQwNzIwNjgxMTgwODM5NDM3OUY3OUM4RTYiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4h+YbqAAACS0lEQVR42uyb3UoCQRSAz0oXEgRZERiS+UOQSkWgRK1CvkpBr9FtdBN0FYhRUFFQWYjd+Q5dBT1At91FeaGdwRMM4s+q+zOzngMfusPO7JlvndndwTVarRZw9A5jkKB6ve5WLmvIOXKIvLtxwGKxOHCfgCInKoW8Inn6TKnyC1JBUJqkRGk7SttpFgSQQWrIckf5MpVnJlnQBlLtIkeWVKX9Jk7QJvIsDateEaX9NidJ0BbyaEGOLOmR6vleUBa5R2JD1otRvayfBeWQGyQxYv0E1c/5UdA2co0kx2wnSe1s+0nQDnJpgxxZ0iW1q70g0YkLZNXmdlep3R2dBeUdktMpKa+jIJF0yUE5sqSSk5ICGstxRZLdggpI2UU5sqQyHV9ZQQWaE5LgTSTp+AUVBZl06Y17/PAdpzxMlQSJsX+LrIAasUL55FUQJM7UHRIBtSJCeZleCtpFHpAwqBlhym/XC0HizFSQRVA7FilP001B4mAvyALoEQuUr+mGoH85IdArQqNKsirIgPY6zJOGcmRJFeqHYacg0ZhYyatpNKx6xTz1I2tVkhVB69BeE55BfiUamkhpdOQ9Q/1Zt1J5ysI+e3R32pTKxPcl5EADQVfIZ8ePIUD9erND0GmfB8T9YcazByH+eHCCfHhxozityRAbK88AcLAgFuRgTCmQww9Npt3uv4IsCOAI+epSPoscsyCAM+S7S3lQBUEqzEFzQ5bzJM1XMRbEglgQBwtiQSyIBbEg3z/NN8HZJdfmmPXHfhnO4Bfq+sefAAMAoCRc0PJdWtcAAAAASUVORK5CYII="

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/paypal/android/sdk/gl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/fw;->aN:Lcom/paypal/android/sdk/fw;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/gl;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/paypal/android/sdk/gl;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/gl;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/paypal/android/sdk/gl;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/paypal/android/sdk/gl;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/paypal/android/sdk/gl;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/paypal/android/sdk/gl;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/paypal/android/sdk/gl;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/paypal/android/sdk/gl;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONArray;I)Ljava/util/ArrayList;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_a

    :try_start_7
    invoke-static {v1, p0}, Lcom/paypal/android/sdk/gl;->a(Ljava/util/ArrayList;Lorg/json/JSONObject;)V

    :cond_a
    if-eqz p1, :cond_29

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_29

    if-eq v0, p2, :cond_1c

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/gl;->a(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1c} :catch_1f

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :catch_1f
    move-exception v0

    const-string v2, "paypal.sdk"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-object v1
.end method

.method private static a(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .registers 11

    if-eqz p1, :cond_3b

    new-instance v0, Lcom/paypal/android/sdk/gl;

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAEgAAAAyCAYAAAD/VJ3gAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2hpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDowQTgwMTE3NDA3MjA2ODExODA4Mzk0Mzc5Rjc5QzhFNiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo2NzNGMzY4RUE1MTUxMUUzQkJERUMzQjVDODJGNTgzQyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo2NzNGMzY4REE1MTUxMUUzQkJERUMzQjVDODJGNTgzQyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChNYWNpbnRvc2gpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NjJFMUU5MzMzNzIxNjgxMTgwODM5NDM3OUY3OUM4RTYiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MEE4MDExNzQwNzIwNjgxMTgwODM5NDM3OUY3OUM4RTYiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4h+YbqAAACS0lEQVR42uyb3UoCQRSAz0oXEgRZERiS+UOQSkWgRK1CvkpBr9FtdBN0FYhRUFFQWYjd+Q5dBT1At91FeaGdwRMM4s+q+zOzngMfusPO7JlvndndwTVarRZw9A5jkKB6ve5WLmvIOXKIvLtxwGKxOHCfgCInKoW8Inn6TKnyC1JBUJqkRGk7SttpFgSQQWrIckf5MpVnJlnQBlLtIkeWVKX9Jk7QJvIsDateEaX9NidJ0BbyaEGOLOmR6vleUBa5R2JD1otRvayfBeWQGyQxYv0E1c/5UdA2co0kx2wnSe1s+0nQDnJpgxxZ0iW1q70g0YkLZNXmdlep3R2dBeUdktMpKa+jIJF0yUE5sqSSk5ICGstxRZLdggpI2UU5sqQyHV9ZQQWaE5LgTSTp+AUVBZl06Y17/PAdpzxMlQSJsX+LrIAasUL55FUQJM7UHRIBtSJCeZleCtpFHpAwqBlhym/XC0HizFSQRVA7FilP001B4mAvyALoEQuUr+mGoH85IdArQqNKsirIgPY6zJOGcmRJFeqHYacg0ZhYyatpNKx6xTz1I2tVkhVB69BeE55BfiUamkhpdOQ9Q/1Zt1J5ysI+e3R32pTKxPcl5EADQVfIZ8ePIUD9erND0GmfB8T9YcazByH+eHCCfHhxozityRAbK88AcLAgFuRgTCmQww9Npt3uv4IsCOAI+epSPoscsyCAM+S7S3lQBUEqzEFzQ5bzJM1XMRbEglgQBwtiQSyIBbEg3z/NN8HZJdfmmPXHfhnO4Bfq+sefAAMAoCRc0PJdWtcAAAAASUVORK5CYII="

    const-string v2, "recipient_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "line1"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "line2"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "city"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "state"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "postal_code"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "country_code"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/paypal/android/sdk/gl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gl;->i:Ljava/lang/String;

    return-object v0
.end method
