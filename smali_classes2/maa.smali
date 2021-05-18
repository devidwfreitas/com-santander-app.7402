.class Lmaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llzx;


# direct methods
.method constructor <init>(Llzx;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lmaa;->a:Llzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lmaa;->a:Llzx;

    invoke-static {v0}, Llzx;->d(Llzx;)V

    .line 283
    return-void
.end method
