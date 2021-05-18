.class Lldj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lldf;


# direct methods
.method constructor <init>(Lldf;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lldj;->a:Lldf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lldj;->a:Lldf;

    invoke-static {v0}, Lldf;->b(Lldf;)V

    .line 137
    return-void
.end method
