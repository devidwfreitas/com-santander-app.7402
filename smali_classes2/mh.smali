.class Lmh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmf;


# direct methods
.method constructor <init>(Lmf;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lmh;->a:Lmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
