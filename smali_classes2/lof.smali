.class Llof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lloc;


# direct methods
.method constructor <init>(Lloc;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Llof;->a:Lloc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Llof;->a:Lloc;

    invoke-static {v0}, Lloc;->d(Lloc;)V

    .line 172
    return-void
.end method
