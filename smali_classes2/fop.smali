.class Lfop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfoo;

.field private c:I


# direct methods
.method constructor <init>(Lfoo;I)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lfop;->b:Lfoo;

    iput p2, p0, Lfop;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iget v0, p0, Lfop;->a:I

    iput v0, p0, Lfop;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lfop;->b:Lfoo;

    invoke-static {v0}, Lfoo;->a(Lfoo;)Lnez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lfop;->b:Lfoo;

    invoke-static {v0}, Lfoo;->a(Lfoo;)Lnez;

    move-result-object v0

    iget v1, p0, Lfop;->c:I

    invoke-interface {v0, v1}, Lnez;->a(I)V

    .line 135
    :cond_0
    return-void
.end method
