.class final Laan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laar;


# direct methods
.method constructor <init>(Laar;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Laan;->a:Laar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Laan;->a:Laar;

    invoke-interface {v0}, Laar;->a()V

    .line 66
    return-void
.end method
