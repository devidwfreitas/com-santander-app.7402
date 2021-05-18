.class Lhmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lhxl;

.field final synthetic b:Lhmc;


# direct methods
.method constructor <init>(Lhmc;Lhxl;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lhmd;->b:Lhmc;

    iput-object p2, p0, Lhmd;->a:Lhxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 37
    packed-switch p2, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lhmd;->b:Lhmc;

    iget-object v1, p0, Lhmd;->a:Lhxl;

    invoke-virtual {v0, v1}, Lhmc;->b(Lhxl;)V

    .line 40
    invoke-static {}, Lhnj;->a()V

    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Lhnj;->b(Z)V

    goto :goto_0

    .line 44
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Lhnj;->b(Z)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
