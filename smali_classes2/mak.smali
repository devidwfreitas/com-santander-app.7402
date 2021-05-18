.class Lmak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmaj;


# direct methods
.method constructor <init>(Lmaj;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lmak;->a:Lmaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmak;->a:Lmaj;

    invoke-static {v0}, Lmaj;->a(Lmaj;)V

    .line 136
    return-void
.end method
