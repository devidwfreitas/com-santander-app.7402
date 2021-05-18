.class Lbyj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnx;


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/LikeContent;

.field final synthetic b:Lbyi;


# direct methods
.method constructor <init>(Lbyi;Lcom/facebook/share/internal/LikeContent;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lbyj;->b:Lbyi;

    iput-object p2, p0, Lbyj;->a:Lcom/facebook/share/internal/LikeContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lbyj;->a:Lcom/facebook/share/internal/LikeContent;

    invoke-static {v0}, Lbyf;->a(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 164
    const-string v0, "LikeDialog"

    const-string v1, "Attempting to present the Like Dialog with an outdated Facebook app on the device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
