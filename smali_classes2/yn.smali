.class Lyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lym;


# direct methods
.method constructor <init>(Lym;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lyn;->a:Lym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lyn;->a:Lym;

    invoke-virtual {v0}, Lym;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 101
    return-void
.end method
