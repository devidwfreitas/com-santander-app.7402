.class Lllw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lllv;


# direct methods
.method constructor <init>(Lllv;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lllw;->b:Lllv;

    iput-object p2, p0, Lllw;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lllw;->b:Lllv;

    invoke-static {v0}, Lllv;->a(Lllv;)Lllx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lllw;->b:Lllv;

    invoke-static {v0}, Lllv;->a(Lllv;)Lllx;

    move-result-object v0

    iget-object v1, p0, Lllw;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lllx;->a(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method
