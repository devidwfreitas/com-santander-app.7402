.class Lms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmr;


# direct methods
.method constructor <init>(Lmr;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lms;->a:Lmr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lms;->a:Lmr;

    invoke-virtual {v0}, Lmr;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 176
    return-void
.end method
