.class final Lafi;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field private synthetic a:Lafe;


# direct methods
.method constructor <init>(Lafe;)V
    .locals 0

    iput-object p1, p0, Lafi;->a:Lafe;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lafi;->a:Lafe;

    const-string v1, "http://www.pdf995.com/samples/pdf.pdf"

    invoke-static {v0, v1}, Lafe;->a(Lafe;Ljava/lang/String;)V

    return-void
.end method
