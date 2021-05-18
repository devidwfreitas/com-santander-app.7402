.class public final Lbab;
.super Lazx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazx",
        "<",
        "Ljava/io/InputStream;",
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
    .line 14
    invoke-direct {p0}, Lazx;-><init>()V

    .line 15
    iput-object p1, p0, Lbab;->a:Landroid/content/res/Resources;

    .line 16
    iput-object p2, p0, Lbab;->b:Laxg;

    .line 17
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/io/InputStream;)Lawr;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lbab;->a:Landroid/content/res/Resources;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lawt;->a(Landroid/content/res/Resources;Ljava/io/InputStream;)Lawr;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lawr;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lbab;->b:Laxg;

    invoke-interface {v0, p1}, Laxg;->a(Lawr;)V

    .line 25
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lbab;->a([Ljava/io/InputStream;)Lawr;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lawr;

    invoke-virtual {p0, p1}, Lbab;->a(Lawr;)V

    return-void
.end method
