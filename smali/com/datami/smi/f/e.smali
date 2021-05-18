.class public Lcom/datami/smi/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/datami/smi/f/d;


# static fields
.field public static a:Ljava/lang/String; = null

.field public static final b:I = 0x584

.field public static final c:I = 0x187

.field public static final d:I = 0x88

.field public static final e:I = 0x44

.field private static final t:Ljava/lang/String; = "proxytfd.mobile.att.net"

.field private static final u:I = 0x1f90

.field private static final v:[B

.field private static w:I


# instance fields
.field private final f:Lcom/datami/smi/f/b;

.field private final g:Lcom/datami/smi/f/b;

.field private final h:Ljava/nio/channels/SocketChannel;

.field private i:Lcom/datami/smi/b/m;

.field private j:Ljava/nio/channels/Selector;

.field private k:Ljava/nio/channels/SocketChannel;

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:J

.field private q:J

.field private r:J

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x3b6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/f/e;->v:[B

    const/16 v0, 0x74

    sput v0, Lcom/datami/smi/f/e;->w:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x48

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0x18d

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/datami/smi/f/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/f/e;->a:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x35t
        -0x4ft
        0x47t
        0x6bt
        0x6t
        -0x3t
        -0x19t
        -0x3t
        -0x6t
        -0x1at
        -0x7t
        0x2dt
        -0x2at
        -0x33t
        -0x6t
        -0x7t
        0x2t
        -0x5t
        -0x18t
        0x4dt
        -0x59t
        0x6t
        -0x13t
        -0xbt
        0x9t
        -0x15t
        -0x8t
        0x4dt
        -0x5at
        -0x8t
        -0x5t
        0x31t
        0x13t
        -0x51t
        -0x10t
        -0x3t
        -0x6t
        0x47t
        -0x53t
        0x0t
        -0x10t
        0x0t
        -0x14t
        0x5t
        0x41t
        -0x21t
        0x13t
        -0x5t
        -0x7t
        0x9t
        -0x2at
        -0x33t
        -0x6t
        -0x7t
        0x2t
        -0x5t
        -0x18t
        0x8t
        -0x6t
        -0x1bt
        -0x6t
        0x5t
        0x41t
        -0x57t
        0x8t
        -0x9t
        -0xft
        -0x1t
        -0x16t
        0x4dt
        -0x49t
        -0x14t
        0x4t
        -0x1ct
        0x52t
        -0x53t
        0x0t
        -0x10t
        0x47t
        -0x21t
        0x13t
        -0xct
        -0xft
        0xet
        -0x12t
        -0x4t
        -0x2t
        0x3dt
        -0x48t
        -0x1bt
        -0x6t
        0x5t
        0x34t
        -0x4at
        0x8t
        -0x9t
        -0xft
        -0x1t
        -0x16t
        0x4dt
        -0x59t
        0x6t
        -0x15t
        -0x4t
        -0x6t
        -0x6t
        -0xct
        0x7t
        -0x30t
        0x4t
        -0x16t
        -0xet
        0x2t
        -0xbt
        0x4t
        -0xct
        0x0t
        0x40t
        -0x5at
        0x3t
        -0x5t
        -0xet
        0x6t
        -0x1at
        -0x8t
        -0x4t
        0x6t
        0x7t
        -0x18t
        -0x33t
        -0xdt
        0x2t
        0x1t
        0x3dt
        -0x55t
        -0x8t
        -0xct
        0x4dt
        -0x4at
        -0x13t
        -0x6t
        -0x7t
        0x2t
        -0x5t
        -0x18t
        0x4dt
        -0x5bt
        -0x2t
        0x48t
        -0x49t
        -0x1et
        -0x2t
        0x8t
        -0x15t
        -0x36t
        0x6t
        -0x3t
        -0x1at
        0x4t
        -0xct
        0x0t
        0x40t
        -0x5at
        0x7t
        -0x14t
        -0xbt
        0xat
        -0x14t
        0x4bt
        -0x5at
        -0x3t
        0x5t
        -0xft
        -0x1t
        -0x16t
        0x4dt
        -0x5bt
        -0x2t
        0x48t
        -0xct
        -0x55t
        0x4ct
        -0x21t
        0x13t
        -0xct
        -0x46t
        -0x1at
        -0x5t
        -0x9t
        -0xbt
        -0x14t
        0xat
        -0x6t
        0x3dt
        -0x2at
        -0x10t
        0x0t
        -0x3t
        -0x18t
        -0x14t
        0x15t
        -0x5t
        -0x9t
        -0xct
        -0x4t
        -0x1bt
        -0x6t
        0x5t
        0x34t
        -0x4at
        0x8t
        -0x9t
        -0xft
        -0x1t
        -0x16t
        0x4dt
        -0x50t
        -0xct
        -0x2t
        -0x12t
        0x4t
        0x1t
        -0x12t
        0x45t
        -0x59t
        0x6t
        -0x15t
        -0x4t
        -0x6t
        -0x6t
        -0xct
        0x7t
        0x3et
        -0x53t
        0x0t
        -0x10t
        0x2dt
        0x13t
        -0x5at
        0x3t
        -0x5t
        -0xet
        0x6t
        -0x1at
        -0x8t
        -0x4t
        0x6t
        0x3et
        -0x53t
        0x0t
        -0x10t
        0x0t
        -0x14t
        0x5t
        0x41t
        -0x21t
        0x13t
        -0x13t
        -0x6t
        -0x7t
        0x2t
        -0x5t
        -0x18t
        0x2dt
        -0xct
        -0x55t
        0x32t
        0xet
        -0x46t
        0x3dt
        -0x2ft
        -0x13t
        -0x7t
        -0x3t
        0x1at
        -0x9t
        -0x4t
        -0xat
        0x1dt
        -0x4t
        -0x45t
        -0x2et
        -0xbt
        -0x8t
        0x33t
        0xet
        -0x55t
        0x32t
        0xet
        -0x46t
        0x50t
        -0x4t
        -0x55t
        0x24t
        -0x2et
        -0x19t
        0x32t
        -0x1bt
        -0x29t
        -0x7t
        -0x9t
        -0x15t
        -0x7t
        0x32t
        -0x46t
        0xdt
        -0x15t
        0x5ft
        -0x4t
        -0xat
        -0x4t
        -0x33t
        -0xdt
        0x2t
        0x1t
        0x3dt
        -0x55t
        -0x8t
        -0xct
        0x4dt
        -0x57t
        -0x9t
        -0x4t
        0x5t
        -0x9t
        -0x15t
        -0x7t
        0x4ct
        -0x4at
        -0x13t
        -0x6t
        -0x7t
        0x2t
        -0x5t
        -0x18t
        0x4t
        -0xdt
        -0x6t
        0x47t
        -0x4dt
        -0x10t
        -0xat
        0x4bt
        -0x4at
        -0x10t
        -0x4t
        -0x3t
        -0x10t
        -0xdt
        0x4dt
        -0xft
        -0x4t
        -0x46t
        0x34t
        0x2t
        -0x48t
        -0x14t
        0x3t
        0x3dt
        -0x5at
        0x7t
        -0x14t
        -0xbt
        0xat
        -0x14t
        0x43t
        -0x4t
        -0x46t
        0x21t
        0x8t
        -0x18t
        0x12t
        -0x46t
        0x34t
        -0x9t
        -0x4t
        -0x10t
        -0x8t
        -0x2t
        0x7t
        -0x5t
        0x2ft
        -0x46t
        -0x9t
        0x6t
        -0xet
        -0xat
        0x0t
        0x30t
        -0x3at
        -0x1at
        -0x7t
        0x3ft
        -0x47t
        0x2t
        -0x16t
        -0x5t
        -0x7t
        0x9t
        -0x36t
        -0x3t
        -0x10t
        -0x10t
        -0x3t
        0x5t
        0x0t
        -0xct
        0x0t
        0x40t
        -0x5bt
        0x8t
        -0x15t
        -0x8t
        0x4dt
        -0x5bt
        0x4t
        -0xbt
        0x1t
        0x3et
        -0x4ct
        -0x1at
        0x1t
        0x0t
        -0x10t
        0x6t
        -0x6t
        0x3dt
        -0x5at
        -0x3t
        0x48t
        -0x50t
        -0xct
        -0x2t
        -0x12t
        0x4t
        0x1t
        -0x1at
        0x4t
        -0xct
        0x0t
        0x40t
        -0x55t
        0x2t
        -0x19t
        0x50t
        -0x57t
        0x0t
        -0xct
        0x0t
        0x40t
        -0x5bt
        0x8t
        -0x15t
        -0x8t
        -0xet
        -0x1bt
        -0x6t
        0x5t
        0x34t
        -0x4at
        0x8t
        -0x9t
        -0xft
        -0x1t
        -0x16t
        0x4dt
        -0x59t
        0x6t
        -0x15t
        -0x4t
        -0x6t
        -0x6t
        -0xct
        0x7t
        0x24t
        0x13t
        -0x33t
        -0xdt
        0x2t
        0x1t
        0x3dt
        -0x55t
        -0x8t
        -0xct
        0x4dt
        -0x4at
        -0x10t
        -0xat
        -0xbt
        0x7t
        0x3et
        -0x4at
        -0xct
        0x0t
        -0x14t
        -0x7t
        0x2t
        -0xet
        0x45t
        -0x57t
        -0x9t
        -0x4t
        -0x8t
        0x4t
        -0x14t
        -0x1t
        -0x14t
        0x52t
        -0x4dt
        -0x10t
        -0xat
        0x4bt
        -0x5at
        0x1t
        -0x10t
        0x4dt
        -0x1bt
        -0x6t
        0x5t
        0x41t
        -0x57t
        0x8t
        -0x9t
        -0xft
        -0x1t
        -0x16t
        0x4dt
        -0x5at
        0x7t
        -0x10t
        -0xdt
        0x4dt
        -0x5at
        -0x9t
        0xbt
        -0x7t
        -0x9t
        -0x15t
        -0x7t
        0x6t
        -0x16t
        0x2t
        -0x7t
        -0x14t
        0x52t
        -0x4dt
        -0x10t
        -0xat
        0x4bt
        -0x4at
        -0x10t
        -0x4t
        -0x3t
        -0x10t
        -0xdt
        0x4dt
        -0x5at
        -0x3t
        0x5t
        -0xft
        -0x1t
        -0x16t
        0x33t
        0x13t
        -0x1et
        -0x2t
        0x8t
        -0x15t
        0x4ct
        -0x59t
        0x6t
        -0x3t
        -0xat
        0x3dt
        -0x4dt
        -0x13t
        -0x4t
        -0x5t
        0x46t
        -0x5at
        0x7t
        -0x14t
        -0xbt
        0xat
        -0x14t
        0x4bt
        -0x5at
        -0x3t
        0x5t
        -0xft
        -0x1t
        -0x16t
        0x33t
        0x13t
        -0x1bt
        -0x6t
        0x5t
        0x34t
        -0x4at
        -0x2t
        -0x10t
        0x40t
        -0x4ct
        0x6t
        -0x15t
        -0x4t
        0x2ft
        0x13t
        -0x3at
        0xet
        -0x9t
        -0x12t
        -0xbt
        0x4t
        -0xdt
        -0x6t
        0x47t
        -0x21t
        0x13t
        -0x8t
        0x48t
        -0x48t
        -0x1bt
        -0x6t
        0x5t
        0x34t
        -0x4at
        0x8t
        -0x9t
        -0xft
        -0x1t
        -0x16t
        0x4dt
        -0x59t
        0x6t
        -0x15t
        -0x4t
        -0x6t
        -0x6t
        -0xct
        0x7t
        -0x6t
        0x7t
        0x12t
        -0x12t
        0x6t
        -0x3t
        -0xat
        -0xct
        -0xct
        0x0t
        0x40t
        -0x7t
        -0x28t
        -0x1at
        -0x7t
        0x2dt
        -0x2at
        -0x33t
        -0x6t
        -0x7t
        0x2t
        -0x5t
        -0x18t
        0x4dt
        -0x59t
        0x6t
        -0x15t
        -0x4t
        -0x6t
        -0x6t
        -0xct
        0x7t
        0x30t
        -0x7t
        -0x7t
        -0x36t
        0x6t
        -0x3t
        -0x1at
        0x8t
        -0x6t
        0x3dt
        -0x5at
        0x7t
        -0x14t
        -0xbt
        0xat
        -0x14t
        0x4bt
        -0x5at
        -0x3t
        0x5t
        -0xft
        -0x1t
        -0x16t
        0x4dt
        -0x5bt
        -0x2t
        0x48t
        -0xct
        -0x55t
        0x4ct
        -0x21t
        0x13t
        -0xct
        -0x46t
        0x3t
        -0x5t
        -0xet
        0x6t
        -0x1at
        -0x8t
        -0x4t
        0x6t
        0x3et
        -0x21t
        0x13t
        -0x3at
        0xet
        -0x9t
        -0x12t
        -0xbt
        0x4t
        -0xdt
        -0x6t
        0x47t
        -0x50t
        -0xct
        0x47t
        -0x5at
        0x7t
        -0x10t
        0x3t
        -0xct
        -0xct
        0x0t
        0x40t
        -0x28t
        -0x1at
        -0x7t
        0x2dt
        -0x2at
        -0x33t
        -0x6t
        -0x7t
        0x2t
        -0x5t
        -0x18t
        0x4dt
        -0x5et
        0x7t
        -0x12t
        0x5t
        0x41t
        -0x5at
        0x1t
        -0x10t
        0x4at
        -0x4t
        -0x22t
        -0xft
        -0xat
        0x0t
        -0x6t
        0x3dt
        -0x5bt
        -0x2t
        0x48t
        -0x4at
        -0x13t
        -0x6t
        -0x7t
        0x2t
        -0x5t
        -0x18t
        0x4dt
        -0x5dt
        0x6t
        0x1t
        0x3at
        -0x7t
        -0x28t
        -0x1at
        -0x7t
        0x2dt
        -0xct
        -0x55t
        0x32t
        0xet
        -0x46t
        0x5t
        -0x4ct
        -0x14t
        -0x7t
        -0x2t
        -0xdt
        0x5t
        0x26t
        0x13t
        -0x36t
        0x6t
        -0x3t
        -0x1at
        0x8t
        -0x6t
        0x3dt
        -0x5at
        -0x3t
        0x5t
        -0xft
        -0x1t
        -0x16t
        0x4dt
        -0x4at
        -0xct
        0x0t
        -0x14t
        -0x7t
        0x2t
        -0x14t
        -0x1t
        0x45t
        -0x5bt
        -0x2t
        0x48t
        -0x7t
        0x8t
        -0xft
        -0xat
        -0xct
        0x4t
        -0x13t
        -0x5t
        -0xat
        -0x3t
        0x0t
        -0x16t
        0x8t
        0x3et
        -0x48t
        -0x1bt
        -0x6t
        0x5t
        0x34t
        -0x4at
        0x8t
        -0x9t
        -0xft
        -0x1t
        -0x16t
        0x4dt
        -0x59t
        0x6t
        -0x15t
        -0x4t
        -0x6t
        -0x6t
        -0xct
        0x7t
        -0x2ct
        0x0t
        -0x14t
        -0x7t
        0x2t
        -0xet
        0x45t
        -0x5et
        0xft
        -0x19t
        0x4ct
        -0x4at
        -0x10t
        -0xat
        -0xbt
        0x7t
        -0x6t
        0x3dt
        -0x49t
        -0x1et
        0x52t
        -0x4at
        -0x10t
        -0x4t
        -0x3t
        -0x10t
        -0xdt
        0x4dt
        -0xft
        -0x4t
        -0x46t
        0x34t
        0x2t
        -0x56t
        -0xat
        0x4bt
        -0x5at
        0x7t
        -0x14t
        -0xbt
        0xat
        -0x14t
        0x43t
        -0x4t
        -0x46t
        0x21t
        0x8t
        -0x18t
        0x12t
        -0x46t
        0x34t
        -0x1at
        -0x7t
        0x2dt
        -0x2at
        -0x33t
        -0x6t
        -0x7t
        0x2t
        -0x5t
        -0x18t
        0x4dt
        -0x59t
        0x6t
        -0x13t
        -0xbt
        0x9t
        -0x15t
        -0x8t
        0x4dt
        -0x50t
        -0x11t
        0x4ct
        -0x5at
        0x7t
        -0x10t
        -0xdt
        0x4dt
        -0x5at
        -0x9t
        0xbt
        -0x7t
        -0x9t
        -0x15t
        -0x7t
        0x6t
        -0x16t
        0x2t
        -0x7t
        -0x14t
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lcom/datami/smi/b/m;)V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/datami/smi/f/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/datami/smi/f/b;-><init>(Z)V

    iput-object v0, p0, Lcom/datami/smi/f/e;->f:Lcom/datami/smi/f/b;

    new-instance v0, Lcom/datami/smi/f/b;

    invoke-direct {v0, v3}, Lcom/datami/smi/f/b;-><init>(Z)V

    iput-object v0, p0, Lcom/datami/smi/f/e;->g:Lcom/datami/smi/f/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    iput v2, p0, Lcom/datami/smi/f/e;->l:I

    iput v2, p0, Lcom/datami/smi/f/e;->m:I

    iput v2, p0, Lcom/datami/smi/f/e;->n:I

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/f/e;->o:Ljava/lang/String;

    iput-wide v4, p0, Lcom/datami/smi/f/e;->p:J

    iput-wide v4, p0, Lcom/datami/smi/f/e;->q:J

    iput-wide v4, p0, Lcom/datami/smi/f/e;->r:J

    iput-boolean v3, p0, Lcom/datami/smi/f/e;->s:Z

    invoke-static {}, Lcom/datami/smi/a/d;->a()Lcom/datami/smi/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/a/d;->b()V

    iput-object p1, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    iput v0, p0, Lcom/datami/smi/f/e;->l:I

    iput-object p2, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    invoke-virtual {p2}, Lcom/datami/smi/b/m;->p()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/datami/smi/b/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x27

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x242

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x13

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/datami/smi/b/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/f/e;->o:Ljava/lang/String;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/datami/smi/f/e;->p:J

    return-void

    :cond_0
    invoke-static {}, Lcom/datami/smi/b/m;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/f/e;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/nio/channels/SocketChannel;Lcom/datami/smi/b/m;Z)Lcom/datami/smi/f/f;
    .locals 16

    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-byte v7, Lcom/datami/smi/b/d;->g:B

    invoke-static {}, Lcom/datami/smi/b/m;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/datami/smi/b/m;->I()I

    move-result v10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-lez v10, :cond_4

    sget-byte v8, Lcom/datami/smi/b/d;->h:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/datami/smi/b/m;->i()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x48

    aget-byte v1, v1, v4

    or-int/lit8 v4, v1, 0x1b

    sget v5, Lcom/datami/smi/f/e;->w:I

    or-int/lit16 v5, v5, 0x209

    invoke-static {v1, v4, v5}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    int-to-short v5, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/datami/smi/c/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    if-ne v4, v10, :cond_1

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x20

    aget-byte v1, v1, v4

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v6, 0x17d

    aget-byte v4, v4, v6

    const/16 v6, 0x68

    invoke-static {v1, v4, v6}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/datami/smi/b/m;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/datami/smi/c/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/datami/smi/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-short v6, v4

    add-int/lit8 v4, v5, 0x5

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v6

    int-to-short v4, v4

    move v15, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v1

    move v1, v15

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/datami/smi/f/e;->v:[B

    const/16 v13, 0x216

    aget-byte v12, v12, v13

    sget-object v13, Lcom/datami/smi/f/e;->v:[B

    const/16 v14, 0x84

    aget-byte v13, v13, v14

    or-int/lit16 v14, v13, 0x2be

    invoke-static {v12, v13, v14}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/datami/smi/f/e;->v:[B

    const/16 v13, 0x20

    aget-byte v12, v12, v13

    sget v13, Lcom/datami/smi/f/e;->w:I

    and-int/lit16 v13, v13, 0x1df

    const/16 v14, 0xea

    invoke-static {v12, v13, v14}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/datami/smi/f/e;->v:[B

    const/16 v13, 0x44

    aget-byte v12, v12, v13

    neg-int v12, v12

    sget-object v13, Lcom/datami/smi/f/e;->v:[B

    const/16 v14, 0x20

    aget-byte v13, v13, v14

    or-int/lit8 v14, v13, 0x24

    invoke-static {v12, v13, v14}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v1, 0x3

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    if-lez v10, :cond_2

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_2
    invoke-virtual {v11, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-lez v10, :cond_3

    invoke-virtual {v11, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    :cond_3
    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    sget-object v0, Lcom/datami/smi/f/e;->v:[B

    const/16 v1, 0x184

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x20

    aget-byte v1, v1, v2

    const/16 v2, 0x200

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/datami/smi/f/e;->b(Ljava/nio/channels/SocketChannel;)Lcom/datami/smi/f/f;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x77

    aget-byte v1, v1, v4

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0x27

    aget-byte v4, v4, v5

    or-int/lit16 v5, v4, 0x337

    invoke-static {v1, v4, v5}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    int-to-short v4, v1

    add-int/lit8 v1, v4, 0x4

    add-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/datami/smi/f/f;->b:Lcom/datami/smi/f/f;

    goto :goto_1
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x4

    sget-object v8, Lcom/datami/smi/f/e;->v:[B

    rsub-int/lit8 v0, p1, 0x74

    add-int/lit8 v2, p0, 0x1

    new-array v1, v2, [B

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    add-int/lit8 v6, v6, 0x1

    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x7

    move v0, v4

    :goto_1
    int-to-byte v9, v1

    add-int/lit8 v4, v0, 0x1

    aput-byte v9, v3, v0

    if-ne v4, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v6, v3

    move-object v3, v1

    move v1, v0

    move v0, v5

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;IZ)Ljava/nio/channels/SocketChannel;
    .locals 10

    const/16 v9, 0x10

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x1f

    sget v0, Lcom/datami/smi/f/e;->w:I

    and-int/lit16 v0, v0, 0xa8

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    aget-byte v1, v1, v6

    const/16 v2, 0x96

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x44

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x48

    aget-byte v2, v2, v3

    const/16 v3, 0x172

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f90

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/nio/channels/SocketChannel;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/datami/smi/f/e;->a(Ljava/net/Socket;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x119

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget v2, Lcom/datami/smi/f/e;->w:I

    or-int/lit16 v2, v2, 0x280

    invoke-static {v6, v1, v2}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x44

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0x48

    aget-byte v4, v4, v5

    const/16 v5, 0x172

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/16 v3, 0x1f90

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/nio/channels/SocketChannel;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_1
    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    aget-byte v1, v1, v6

    const/16 v2, 0x2a0

    invoke-static {v6, v1, v2}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sget-object v0, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x2b

    aget-byte v0, v0, v3

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    aget-byte v3, v3, v9

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0x27

    aget-byte v4, v4, v5

    invoke-static {v0, v3, v4}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/datami/smi/f/e;->v:[B

    aget-byte v0, v0, v9

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x84

    aget-byte v3, v3, v4

    or-int/lit8 v4, v3, 0x7a

    invoke-static {v0, v3, v4}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/datami/smi/d/c;->c:Lcom/datami/smi/d/c;

    invoke-static {v3}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/datami/smi/d/d;->f:Lcom/datami/smi/d/d;

    invoke-static {v0}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x2a

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    aget-byte v3, v3, v6

    or-int/lit8 v4, v3, 0x4c

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x27

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x30c

    aget-byte v3, v3, v4

    const/16 v4, 0x68

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/f/e;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    throw v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x216

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x84

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x216

    aget-byte v2, v2, v3

    const/16 v3, 0x1c2

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/datami/smi/b/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    aget-byte v2, v2, v4

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x17d

    aget-byte v3, v3, v4

    const/16 v4, 0x25c

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-static {v0}, Lcom/datami/smi/b/m;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/nio/channels/SocketChannel;)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x28d

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x1f

    aget-byte v3, v3, v4

    const/16 v4, 0x1d8

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Ljava/net/Socket;Ljava/lang/String;I)Z
    .locals 8

    const/16 v6, 0x11c

    const/16 v4, 0x1f

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v7, 0x2b

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x9a

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    aget-byte v3, v3, v4

    or-int/lit16 v4, v3, 0xcc

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0x12

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/f/e;->v:[B

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/e;->v:[B

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x31e

    aget-byte v2, v2, v4

    add-int/lit8 v2, v2, 0x1

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0x11c

    aget-byte v4, v4, v5

    const/16 v5, 0x38b

    invoke-static {v2, v4, v5}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    const/16 v2, 0x1000

    new-array v2, v2, [B

    const/16 v4, 0x1f

    sget-object v5, Lcom/datami/smi/f/e;->v:[B

    const/16 v6, 0x10

    aget-byte v5, v5, v6

    const/16 v6, 0x281

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/datami/smi/f/e;->v:[B

    const/16 v6, 0x96

    aget-byte v5, v5, v6

    neg-int v5, v5

    sget-object v6, Lcom/datami/smi/f/e;->v:[B

    const/16 v7, 0x173

    aget-byte v6, v6, v7

    const/16 v7, 0x230

    invoke-static {v5, v6, v7}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x2b

    aget-byte v2, v2, v4

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0x16d

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x188

    invoke-static {v2, v4, v5}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x51

    aget-byte v2, v2, v4

    neg-int v2, v2

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0x16d

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x2b

    invoke-static {v2, v4, v5}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0xc

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0x17d

    aget-byte v4, v4, v5

    const/16 v5, 0x2ca

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x18

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0x94

    aget-byte v4, v4, v5

    const/16 v5, 0x313

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static b(Ljava/nio/channels/SocketChannel;)Lcom/datami/smi/f/f;
    .locals 13

    const/16 v12, 0x216

    const/16 v11, 0x53

    const/4 v10, 0x3

    const/16 v9, 0x20

    sget-object v0, Lcom/datami/smi/f/f;->b:Lcom/datami/smi/f/f;

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0x170

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/e;->v:[B

    aget-byte v5, v5, v9

    const/16 v6, 0xc9

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0x2b

    aget-byte v4, v4, v5

    sget v5, Lcom/datami/smi/f/e;->w:I

    and-int/lit16 v5, v5, 0x1df

    const/16 v6, 0x91

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v0, Lcom/datami/smi/f/e;->a:Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x44

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    or-int/lit16 v3, v2, 0x261

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/datami/smi/f/f;->a:Lcom/datami/smi/f/f;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-gtz v2, :cond_2

    sget-object v0, Lcom/datami/smi/f/e;->a:Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x96

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    aget-byte v2, v2, v12

    const/16 v3, 0x33a

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/datami/smi/f/f;->a:Lcom/datami/smi/f/f;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lcom/datami/smi/f/e;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/datami/smi/f/e;->v:[B

    aget-byte v6, v6, v11

    sget-object v7, Lcom/datami/smi/f/e;->v:[B

    aget-byte v7, v7, v9

    const/16 v8, 0x24e

    invoke-static {v6, v7, v8}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v10, v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    const/16 v5, 0xc8

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/e;->v:[B

    aget-byte v5, v5, v9

    const/16 v6, 0x1c3

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    aget-byte v4, v4, v11

    sget v5, Lcom/datami/smi/f/e;->w:I

    and-int/lit16 v5, v5, 0x1df

    sget-object v6, Lcom/datami/smi/f/e;->v:[B

    const/16 v7, 0x116

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v1, :cond_3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/datami/smi/f/e;->a(Ljava/lang/String;)V

    :cond_3
    sget v1, Lcom/datami/smi/b/d;->f:I

    if-ne v3, v1, :cond_5

    sget-object v0, Lcom/datami/smi/f/e;->a:Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    aget-byte v1, v1, v9

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x2f8

    aget-byte v2, v2, v3

    neg-int v2, v2

    or-int/lit16 v3, v2, 0x94

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/datami/smi/b/m;->S()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/datami/smi/SmiIntentService;->sendClearCacheEventIntent()V

    :cond_4
    sget-object v0, Lcom/datami/smi/f/f;->c:Lcom/datami/smi/f/f;

    goto/16 :goto_0

    :cond_5
    sget v1, Lcom/datami/smi/b/d;->e:I

    if-eq v3, v1, :cond_0

    sget-object v0, Lcom/datami/smi/f/e;->a:Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x3b

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    aget-byte v2, v2, v12

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    const/16 v4, 0x13

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/datami/smi/f/f;->a:Lcom/datami/smi/f/f;

    goto/16 :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/datami/smi/f/e;->g:Lcom/datami/smi/f/b;

    iget-object v1, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v1}, Lcom/datami/smi/f/b;->a(Ljava/nio/channels/SocketChannel;)I

    iget-object v0, p0, Lcom/datami/smi/f/e;->g:Lcom/datami/smi/f/b;

    invoke-virtual {v0}, Lcom/datami/smi/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/datami/smi/f/e;->f()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/datami/smi/f/e;->f:Lcom/datami/smi/f/b;

    iget-object v1, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v1}, Lcom/datami/smi/f/b;->a(Ljava/nio/channels/SocketChannel;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/datami/smi/f/e;->r:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/datami/smi/f/e;->q:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Lcom/datami/smi/a/d;->a()Lcom/datami/smi/a/d;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/f/e;->q:J

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/datami/smi/a/d;->a(J)V

    :cond_0
    iput-wide v0, p0, Lcom/datami/smi/f/e;->r:J

    :cond_1
    iget-object v0, p0, Lcom/datami/smi/f/e;->f:Lcom/datami/smi/f/b;

    invoke-virtual {v0}, Lcom/datami/smi/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/datami/smi/f/e;->f()V

    :cond_2
    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/datami/smi/f/e;->f:Lcom/datami/smi/f/b;

    iget-object v1, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v1}, Lcom/datami/smi/f/b;->b(Ljava/nio/channels/SocketChannel;)V

    iget-object v0, p0, Lcom/datami/smi/f/e;->f:Lcom/datami/smi/f/b;

    invoke-virtual {v0}, Lcom/datami/smi/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/datami/smi/f/e;->f()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/datami/smi/f/e;->g:Lcom/datami/smi/f/b;

    iget-object v1, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v1}, Lcom/datami/smi/f/b;->b(Ljava/nio/channels/SocketChannel;)V

    iget-object v0, p0, Lcom/datami/smi/f/e;->g:Lcom/datami/smi/f/b;

    invoke-virtual {v0}, Lcom/datami/smi/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/datami/smi/f/e;->f()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/datami/smi/f/e;->g:Lcom/datami/smi/f/b;

    invoke-virtual {v0}, Lcom/datami/smi/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/datami/smi/f/e;->f:Lcom/datami/smi/f/b;

    invoke-virtual {v3}, Lcom/datami/smi/f/b;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    iget-object v3, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/datami/smi/f/e;->j:Ljava/nio/channels/Selector;

    invoke-virtual {v3, v4, v0, p0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    iget-object v0, p0, Lcom/datami/smi/f/e;->f:Lcom/datami/smi/f/b;

    invoke-virtual {v0}, Lcom/datami/smi/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/datami/smi/f/e;->g:Lcom/datami/smi/f/b;

    invoke-virtual {v0}, Lcom/datami/smi/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v1, v1, 0x4

    :cond_1
    iget-object v0, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lcom/datami/smi/f/e;->j:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v2, v1, p0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    return-void

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/datami/smi/f/e;->s:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    invoke-static {v0}, Lcom/datami/smi/f/g;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/datami/smi/f/e;->a(Ljava/nio/channels/SocketChannel;)V

    iget-object v0, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/datami/smi/f/e;->a(Ljava/nio/channels/SocketChannel;)V

    return-void
.end method

.method public final a(Ljava/nio/channels/SelectionKey;)V
    .locals 11

    const/16 v10, 0x1f

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/f/e;->g:Lcom/datami/smi/f/b;

    iget-object v1, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v1}, Lcom/datami/smi/f/b;->a(Ljava/nio/channels/SocketChannel;)I

    iget-object v0, p0, Lcom/datami/smi/f/e;->g:Lcom/datami/smi/f/b;

    invoke-virtual {v0}, Lcom/datami/smi/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/datami/smi/f/e;->f()V

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/datami/smi/f/e;->f:Lcom/datami/smi/f/b;

    iget-object v1, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v1}, Lcom/datami/smi/f/b;->b(Ljava/nio/channels/SocketChannel;)V

    iget-object v0, p0, Lcom/datami/smi/f/e;->f:Lcom/datami/smi/f/b;

    invoke-virtual {v0}, Lcom/datami/smi/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/datami/smi/f/e;->f()V

    :cond_1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/datami/smi/f/e;->f:Lcom/datami/smi/f/b;

    iget-object v1, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v1}, Lcom/datami/smi/f/b;->a(Ljava/nio/channels/SocketChannel;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/datami/smi/f/e;->r:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/datami/smi/f/e;->q:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {}, Lcom/datami/smi/a/d;->a()Lcom/datami/smi/a/d;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/f/e;->q:J

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/datami/smi/a/d;->a(J)V

    :cond_2
    iput-wide v0, p0, Lcom/datami/smi/f/e;->r:J

    :cond_3
    iget-object v0, p0, Lcom/datami/smi/f/e;->f:Lcom/datami/smi/f/b;

    invoke-virtual {v0}, Lcom/datami/smi/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/datami/smi/f/e;->f()V

    :cond_4
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/datami/smi/f/e;->g:Lcom/datami/smi/f/b;

    iget-object v1, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v1}, Lcom/datami/smi/f/b;->b(Ljava/nio/channels/SocketChannel;)V

    iget-object v0, p0, Lcom/datami/smi/f/e;->g:Lcom/datami/smi/f/b;

    invoke-virtual {v0}, Lcom/datami/smi/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/datami/smi/f/e;->f()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/datami/smi/f/e;->s:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x44

    invoke-static {v0}, Lcom/datami/smi/f/g;->a(I)V

    :cond_6
    iget-object v0, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/datami/smi/f/e;->a(Ljava/nio/channels/SocketChannel;)V

    iget-object v0, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/datami/smi/f/e;->a(Ljava/nio/channels/SocketChannel;)V

    sget-object v0, Lcom/datami/smi/f/e;->v:[B

    const/16 v1, 0x11c

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    aget-byte v1, v1, v10

    const/16 v2, 0x358

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget v2, p0, Lcom/datami/smi/f/e;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/datami/smi/f/e;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget v2, p0, Lcom/datami/smi/f/e;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/datami/smi/f/e;->s:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x44

    invoke-static {v0}, Lcom/datami/smi/f/g;->a(I)V

    :cond_7
    iget-object v0, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/datami/smi/f/e;->a(Ljava/nio/channels/SocketChannel;)V

    iget-object v0, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/datami/smi/f/e;->a(Ljava/nio/channels/SocketChannel;)V

    sget-object v0, Lcom/datami/smi/f/e;->v:[B

    const/16 v1, 0x188

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    aget-byte v1, v1, v10

    or-int/lit16 v2, v1, 0x102

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget v2, p0, Lcom/datami/smi/f/e;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/datami/smi/f/e;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget v2, p0, Lcom/datami/smi/f/e;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final a(Ljava/nio/channels/Selector;)V
    .locals 10

    const/16 v9, 0x68

    const/16 v8, 0x10

    const/16 v7, 0x27

    const/16 v6, 0x1f

    iput-object p1, p0, Lcom/datami/smi/f/e;->j:Ljava/nio/channels/Selector;

    :try_start_0
    iget-object v0, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    invoke-virtual {v0}, Lcom/datami/smi/b/m;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->t()V

    :cond_0
    iget-object v0, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/datami/smi/f/e;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    invoke-virtual {v3}, Lcom/datami/smi/b/m;->d()I

    move-result v3

    iget-object v4, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    invoke-virtual {v4}, Lcom/datami/smi/b/m;->D()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/e;->a(Ljava/lang/String;IZ)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/datami/smi/f/e;->q:J

    invoke-static {}, Lcom/datami/smi/a/d;->a()Lcom/datami/smi/a/d;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/f/e;->q:J

    sub-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Lcom/datami/smi/a/d;->b(J)V

    iget-object v0, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    iput v0, p0, Lcom/datami/smi/f/e;->m:I

    iget-object v0, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lcom/datami/smi/f/e;->n:I

    iget-object v0, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    invoke-virtual {v0}, Lcom/datami/smi/b/m;->p()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    invoke-virtual {v0}, Lcom/datami/smi/b/m;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/datami/smi/b/m;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/datami/smi/f/e;->v:[B

    const/16 v1, 0x1f

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x48

    aget-byte v1, v1, v2

    const/16 v2, 0x191

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    iget-object v0, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    invoke-static {v0}, Lcom/datami/smi/SmiIntentService;->sendGwPingTestIntent(Lcom/datami/smi/b/m;)V

    iget-object v0, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    invoke-virtual {v0}, Lcom/datami/smi/b/m;->b()I

    move-result v0

    invoke-static {v0}, Lcom/datami/smi/b/m;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/e;->a(Ljava/nio/channels/SocketChannel;Lcom/datami/smi/b/m;Z)Lcom/datami/smi/f/f;

    :cond_2
    iget-object v0, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x3b

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x1f

    aget-byte v2, v2, v3

    const/16 v3, 0x31c

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/f/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x27

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x30c

    aget-byte v2, v2, v3

    const/16 v3, 0x68

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    invoke-virtual {v1}, Lcom/datami/smi/b/m;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/datami/smi/f/e;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/datami/smi/f/e;->s:Z

    const/16 v0, 0x187

    invoke-static {v0}, Lcom/datami/smi/f/g;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x2b

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/e;->v:[B

    aget-byte v3, v3, v8

    sget-object v4, Lcom/datami/smi/f/e;->v:[B

    aget-byte v4, v4, v7

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/datami/smi/f/e;->v:[B

    aget-byte v0, v0, v8

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x84

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x7a

    invoke-static {v0, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/d/c;->c:Lcom/datami/smi/d/c;

    invoke-static {v2}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/datami/smi/d/d;->f:Lcom/datami/smi/d/d;

    invoke-static {v0}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    iget-boolean v0, p0, Lcom/datami/smi/f/e;->s:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x44

    invoke-static {v0}, Lcom/datami/smi/f/g;->a(I)V

    :cond_3
    iget-object v0, p0, Lcom/datami/smi/f/e;->h:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/datami/smi/f/e;->a(Ljava/nio/channels/SocketChannel;)V

    iget-object v0, p0, Lcom/datami/smi/f/e;->k:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/datami/smi/f/e;->a(Ljava/nio/channels/SocketChannel;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    const/16 v2, 0x2a

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    aget-byte v2, v2, v6

    or-int/lit8 v3, v2, 0x4c

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/f/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/f/e;->v:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/f/e;->v:[B

    const/16 v3, 0x30c

    aget-byte v2, v2, v3

    invoke-static {v1, v2, v9}, Lcom/datami/smi/f/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/f/e;->i:Lcom/datami/smi/b/m;

    invoke-virtual {v1}, Lcom/datami/smi/b/m;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method
