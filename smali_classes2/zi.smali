.class Lzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzf;


# direct methods
.method constructor <init>(Lzf;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lzi;->a:Lzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lzi;->a:Lzf;

    const-string v1, "3"

    invoke-static {v0, v1}, Lzf;->a(Lzf;Ljava/lang/String;)V

    .line 94
    return-void
.end method
