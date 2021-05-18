.class Lfpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfpk;

.field private c:I


# direct methods
.method constructor <init>(Lfpk;I)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lfpl;->b:Lfpk;

    iput p2, p0, Lfpl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget v0, p0, Lfpl;->a:I

    iput v0, p0, Lfpl;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lfpl;->b:Lfpk;

    invoke-static {v0}, Lfpk;->a(Lfpk;)Lnez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lfpl;->b:Lfpk;

    invoke-static {v0}, Lfpk;->a(Lfpk;)Lnez;

    move-result-object v0

    iget v1, p0, Lfpl;->c:I

    invoke-interface {v0, v1}, Lnez;->a(I)V

    .line 67
    :cond_0
    return-void
.end method
