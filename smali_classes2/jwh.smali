.class Ljwh;
.super Lgpe;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljwg;


# direct methods
.method constructor <init>(Ljwg;Landroid/view/View;Lgpj;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Ljwh;->a:Ljwg;

    invoke-direct {p0, p2, p3}, Lgpe;-><init>(Landroid/view/View;Lgpj;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ljwh;->a:Ljwg;

    invoke-static {v0}, Ljwg;->a(Ljwg;)Ljvl;

    move-result-object v0

    invoke-interface {v0, p1}, Ljvl;->b(Ljava/lang/String;)V

    .line 175
    return-void
.end method
