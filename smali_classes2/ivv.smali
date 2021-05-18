.class Livv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Livu;


# direct methods
.method constructor <init>(Livu;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Livv;->a:Livu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Livv;->a:Livu;

    iget-object v0, v0, Livu;->a:Livt;

    invoke-static {v0}, Livt;->c(Livt;)Ljaj;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Ljaj;->c(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Livv;->a:Livu;

    iget-object v0, v0, Livu;->a:Livt;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Livt;->a(Livt;Ljava/util/List;)Ljava/util/List;

    .line 67
    return-void
.end method
