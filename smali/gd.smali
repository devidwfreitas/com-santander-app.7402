.class Lgd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfw;

.field final synthetic b:Lgb;


# direct methods
.method constructor <init>(Lgb;Lfw;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lgd;->b:Lgb;

    iput-object p2, p0, Lgd;->a:Lfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lgd;->a:Lfw;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfw;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    iget-object v1, p0, Lgd;->a:Lfw;

    invoke-virtual {v1, v0}, Lfw;->a(Ljava/lang/Exception;)Z

    goto :goto_0
.end method
