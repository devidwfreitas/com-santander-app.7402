.class Lfpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfoz;

.field private c:I


# direct methods
.method constructor <init>(Lfoz;I)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Lfpa;->b:Lfoz;

    iput p2, p0, Lfpa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget v0, p0, Lfpa;->a:I

    iput v0, p0, Lfpa;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lfpa;->b:Lfoz;

    invoke-static {v0}, Lfoz;->a(Lfoz;)Lnez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lfpa;->b:Lfoz;

    invoke-static {v0}, Lfoz;->a(Lfoz;)Lnez;

    move-result-object v0

    iget v1, p0, Lfpa;->c:I

    invoke-interface {v0, v1}, Lnez;->a(I)V

    .line 65
    :cond_0
    return-void
.end method
