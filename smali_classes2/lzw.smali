.class Llzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llzt;


# direct methods
.method constructor <init>(Llzt;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Llzw;->a:Llzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Llzw;->a:Llzt;

    invoke-static {v0}, Llzt;->e(Llzt;)V

    .line 208
    return-void
.end method
