.class public Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
.super Ljava/lang/Object;
.source "JSCaMDOIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/android/app/JSCaMDOIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormRequest"
.end annotation


# instance fields
.field public final enctype:Ljava/lang/String;

.field public final formData:Ljava/lang/String;

.field public final httpMethod:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "enctype"    # Ljava/lang/String;
    .param p4, "jsonObjFormData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-object p1, p0, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;->url:Ljava/lang/String;

    .line 818
    iput-object p2, p0, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;->httpMethod:Ljava/lang/String;

    .line 819
    iput-object p3, p0, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;->enctype:Ljava/lang/String;

    .line 820
    iput-object p4, p0, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;->formData:Ljava/lang/String;

    .line 821
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 825
    new-instance v1, Lorg/json/JSONArray;

    iget-object v7, p0, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;->formData:Ljava/lang/String;

    invoke-direct {v1, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 826
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 828
    .local v6, "size":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .local v5, "parameterMap":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 832
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 833
    .local v3, "param":Lorg/json/JSONObject;
    const-string v7, "name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 834
    .local v4, "paramName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 835
    const-string v7, "UTF-8"

    invoke-static {v4, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const-string v7, "value"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 842
    .end local v3    # "param":Lorg/json/JSONObject;
    .end local v4    # "paramName":Ljava/lang/String;
    :cond_1
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 843
    .local v2, "lastIndexOfamp":I
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
