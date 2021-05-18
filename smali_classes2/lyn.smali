.class Llyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llyl;


# direct methods
.method constructor <init>(Llyl;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Llyn;->a:Llyl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Llyn;->a:Llyl;

    invoke-static {v0}, Llyl;->a(Llyl;)Llyo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Llyn;->a:Llyl;

    invoke-static {v0}, Llyl;->a(Llyl;)Llyo;

    move-result-object v0

    invoke-interface {v0}, Llyo;->b()V

    .line 94
    :cond_0
    return-void
.end method
