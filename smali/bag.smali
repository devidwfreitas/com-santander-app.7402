.class public final Lbag;
.super Lazx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazx",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Laxg;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Laxg;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lazx;-><init>()V

    .line 16
    iput-object p1, p0, Lbag;->a:Landroid/content/res/Resources;

    .line 17
    iput-object p2, p0, Lbag;->b:Laxg;

    .line 18
    return-void
.end method


# virtual methods
.method protected varargs a([Lorg/json/JSONObject;)Lawr;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lbag;->a:Landroid/content/res/Resources;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lawt;->a(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lawr;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lawr;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lbag;->b:Laxg;

    invoke-interface {v0, p1}, Laxg;->a(Lawr;)V

    .line 26
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lbag;->a([Lorg/json/JSONObject;)Lawr;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lawr;

    invoke-virtual {p0, p1}, Lbag;->a(Lawr;)V

    return-void
.end method
