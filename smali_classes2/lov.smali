.class Llov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llou;


# direct methods
.method constructor <init>(Llou;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Llov;->a:Llou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Llov;->a:Llou;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llou;->a(Llou;Z)V

    .line 127
    return-void
.end method
