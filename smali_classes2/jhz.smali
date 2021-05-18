.class Ljhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljhw;


# direct methods
.method constructor <init>(Ljhw;I)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Ljhz;->b:Ljhw;

    iput p2, p0, Ljhz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 268
    const-string v0, "imageButtonAjuda"

    iget v1, p0, Ljhz;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Ljhz;->b:Ljhw;

    invoke-static {v0}, Ljhw;->a(Ljhw;)Ljie;

    move-result-object v1

    iget-object v0, p0, Ljhz;->b:Ljhw;

    iget v2, p0, Ljhz;->a:I

    invoke-virtual {v0, v2}, Ljhw;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdl;

    invoke-interface {v1, v0}, Ljie;->a(Ljdl;)V

    .line 270
    return-void
.end method
