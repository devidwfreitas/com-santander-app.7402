.class Lzg;
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
    .line 76
    iput-object p1, p0, Lzg;->a:Lzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lzg;->a:Lzf;

    const-string v1, "1"

    invoke-static {v0, v1}, Lzf;->a(Lzf;Ljava/lang/String;)V

    .line 80
    return-void
.end method
