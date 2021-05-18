.class public Lorg/dom4j/io/SAXEventRecorder;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final NULL:B = 0x2t

.field private static final OBJECT:B = 0x1t

.field private static final STRING:B = 0x0t

.field private static final XMLNS:Ljava/lang/String; = "xmlns"

.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private events:Ljava/util/List;

.field private prefixMappings:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    .line 75
    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 433
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 434
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 435
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 436
    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 437
    invoke-virtual {v0, p4}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 438
    invoke-virtual {v0, p5}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 439
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method public characters([CII)V
    .locals 2

    .prologue
    .line 367
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 368
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 369
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 370
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 371
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    return-void
.end method

.method public comment([CII)V
    .locals 2

    .prologue
    .line 414
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 415
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 416
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 417
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 418
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 425
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 426
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 427
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 428
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method public endCDATA()V
    .locals 2

    .prologue
    .line 409
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 410
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method public endDTD()V
    .locals 2

    .prologue
    .line 387
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 388
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 262
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 337
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 338
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 339
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 341
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    if-eqz p1, :cond_0

    .line 348
    new-instance v0, Lorg/dom4j/QName;

    invoke-static {p1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    .line 353
    :goto_0
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 354
    if-eqz v0, :cond_1

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 356
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    new-instance v1, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 359
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 360
    iget-object v2, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    :cond_0
    new-instance v0, Lorg/dom4j/QName;

    invoke-direct {v0, p2}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_1
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 398
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 399
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 400
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 251
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 252
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 453
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 454
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 455
    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 456
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 445
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 446
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 447
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 236
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2

    .prologue
    .line 470
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 471
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    .line 473
    :cond_0
    return-void
.end method

.method public replay(Lorg/xml/sax/ContentHandler;)V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 79
    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 81
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    .line 84
    iget-byte v0, v6, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->event:B

    packed-switch v0, :pswitch_data_0

    .line 224
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v6, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->event:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_0
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_3
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    goto :goto_0

    .line 109
    :pswitch_4
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_0

    .line 115
    :pswitch_5
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 116
    invoke-virtual {v6, v12}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 118
    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 121
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    .line 123
    aget-object v1, v5, v9

    aget-object v2, v5, v10

    aget-object v3, v5, v11

    aget-object v4, v5, v12

    aget-object v5, v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_0
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3, v0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 135
    :pswitch_6
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :pswitch_7
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    .line 144
    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 145
    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 146
    invoke-interface {p1, v0, v2, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto/16 :goto_0

    :pswitch_8
    move-object v0, p1

    .line 152
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    move-object v0, p1

    .line 159
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    goto/16 :goto_0

    :pswitch_a
    move-object v0, p1

    .line 164
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    move-object v0, p1

    .line 170
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    move-object v0, p1

    .line 176
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    goto/16 :goto_0

    :pswitch_d
    move-object v0, p1

    .line 181
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_0

    .line 187
    :pswitch_e
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    .line 188
    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 189
    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p1

    .line 190
    check-cast v1, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1, v0, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto/16 :goto_0

    :pswitch_f
    move-object v0, p1

    .line 196
    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    move-object v0, p1

    .line 202
    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v12}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v13}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    move-object v0, p1

    .line 210
    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    move-object v0, p1

    .line 217
    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_1
    return-void

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public startCDATA()V
    .locals 2

    .prologue
    .line 404
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 405
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 379
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 380
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 383
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    return-void
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 257
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 267
    new-instance v5, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    invoke-direct {v5, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 268
    invoke-virtual {v5, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v5, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 270
    invoke-virtual {v5, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 273
    if-eqz p1, :cond_1

    .line 274
    new-instance v0, Lorg/dom4j/QName;

    invoke-static {p1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    move-object v4, v0

    .line 279
    :goto_0
    if-eqz p4, :cond_5

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lez v0, :cond_5

    .line 280
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 283
    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 285
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    const-string v3, "xmlns"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_2

    .line 294
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 299
    :goto_2
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    invoke-direct {v0, v8}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 301
    invoke-virtual {v0, v3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 302
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 303
    iget-object v7, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 308
    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    iget-object v7, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 276
    :cond_1
    new-instance v0, Lorg/dom4j/QName;

    invoke-direct {v0, p2}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_0

    .line 296
    :cond_2
    const-string v0, ""

    move-object v3, v0

    goto :goto_2

    .line 316
    :cond_3
    new-array v3, v9, [Ljava/lang/String;

    .line 317
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 318
    const/4 v7, 0x1

    aput-object v0, v3, v7

    .line 319
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    .line 320
    const/4 v0, 0x3

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v0

    .line 321
    const/4 v0, 0x4

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v0

    .line 322
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 328
    :cond_4
    invoke-virtual {v5, v6}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 331
    :cond_5
    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 392
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 393
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 394
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 244
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 466
    :goto_0
    return-void

    .line 463
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 464
    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
