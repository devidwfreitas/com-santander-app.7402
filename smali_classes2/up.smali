.class Lup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Luo;


# direct methods
.method constructor <init>(Luo;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lup;->a:Luo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lup;->a:Luo;

    invoke-static {v0}, Luo;->a(Luo;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 92
    return-void
.end method
